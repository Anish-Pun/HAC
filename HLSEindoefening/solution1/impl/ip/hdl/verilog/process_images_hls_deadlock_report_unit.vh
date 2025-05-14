   
    parameter PROC_NUM = 4;
    parameter ST_IDLE = 3'b000;
    parameter ST_FILTER_FAKE = 3'b001;
    parameter ST_DL_DETECTED = 3'b010;
    parameter ST_DL_REPORT = 3'b100;
   

    reg [2:0] CS_fsm;
    reg [2:0] NS_fsm;
    reg [PROC_NUM - 1:0] dl_detect_reg;
    reg [PROC_NUM - 1:0] dl_done_reg;
    reg [PROC_NUM - 1:0] origin_reg;
    reg [PROC_NUM - 1:0] dl_in_vec_reg;
    reg [31:0] dl_keep_cnt;
    reg stop_report_path;
    reg [PROC_NUM - 1:0] reported_proc;
    integer i;
    integer fp;

    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            reported_proc <= 'b0;
        end
        else if (CS_fsm == ST_DL_REPORT) begin
            reported_proc <= reported_proc | dl_in_vec;
        end
        else if (CS_fsm == ST_DL_DETECTED) begin
            reported_proc <= 'b0;
        end
    end

    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            stop_report_path <= 1'b0;
        end
        else if (CS_fsm == ST_DL_REPORT && (|(dl_in_vec & reported_proc))) begin
            stop_report_path <= 1'b1;
        end
        else if (CS_fsm == ST_IDLE) begin
            stop_report_path <= 1'b0;
        end
    end

    // FSM State machine
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            CS_fsm <= ST_IDLE;
        end
        else begin
            CS_fsm <= NS_fsm;
        end
    end

    always @ (CS_fsm or dl_in_vec or dl_detect_reg or dl_done_reg or dl_in_vec or origin_reg or dl_keep_cnt) begin
        case (CS_fsm)
            ST_IDLE : begin
                if (|dl_in_vec) begin
                    NS_fsm = ST_FILTER_FAKE;
                end
                else begin
                    NS_fsm = ST_IDLE;
                end
            end
            ST_FILTER_FAKE: begin
                if (dl_keep_cnt >= 32'd1000) begin
                    NS_fsm = ST_DL_DETECTED;
                end
                else if (dl_detect_reg != (dl_detect_reg & dl_in_vec)) begin
                    NS_fsm = ST_IDLE;
                end
                else begin
                    NS_fsm = ST_FILTER_FAKE;
                end
            end
            ST_DL_DETECTED: begin
                // has unreported deadlock cycle
                if ((dl_detect_reg != dl_done_reg) && stop_report_path == 1'b0) begin
                    NS_fsm = ST_DL_REPORT;
                end
                else begin
                    NS_fsm = ST_DL_DETECTED;
                end
            end
            ST_DL_REPORT: begin
                if (|(dl_in_vec & origin_reg)) begin
                    NS_fsm = ST_DL_DETECTED;
                end
                // avoid report deadlock ring.
                else if (|(dl_in_vec & reported_proc)) begin
                    NS_fsm = ST_DL_DETECTED;
                end
                else begin
                    NS_fsm = ST_DL_REPORT;
                end
            end
            default: NS_fsm = ST_IDLE;
        endcase
    end

    // dl_detect_reg record the procs that first detect deadlock
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            dl_detect_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_IDLE) begin
                dl_detect_reg <= dl_in_vec;
            end
        end
    end

    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            dl_keep_cnt <= 32'h0;
        end
        else begin
            if (CS_fsm == ST_FILTER_FAKE && (dl_detect_reg == (dl_detect_reg & dl_in_vec))) begin
                dl_keep_cnt <= dl_keep_cnt + 32'h1;
            end
            else if (CS_fsm == ST_FILTER_FAKE && (dl_detect_reg != (dl_detect_reg & dl_in_vec))) begin
                dl_keep_cnt <= 32'h0;
            end
        end
    end

    // dl_detect_out keeps in high after deadlock detected
    assign dl_detect_out = (|dl_detect_reg) && (CS_fsm == ST_DL_DETECTED || CS_fsm == ST_DL_REPORT);

    // dl_done_reg record the cycles has been reported
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            dl_done_reg <= 'b0;
        end
        else begin
            if ((CS_fsm == ST_DL_REPORT) && (|(dl_in_vec & dl_detect_reg) == 'b1)) begin
                dl_done_reg <= dl_done_reg | dl_in_vec;
            end
        end
    end

    // clear token once a cycle is done
    assign token_clear = (CS_fsm == ST_DL_REPORT) ? ((|(dl_in_vec & origin_reg)) ? 'b1 : 'b0) : 'b0;

    // origin_reg record the current cycle start id
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            origin_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_DL_DETECTED) begin
                origin_reg <= origin;
            end
        end
    end
   
    // origin will be valid for only one cycle
    wire [PROC_NUM*PROC_NUM - 1:0] origin_tmp;
    assign origin_tmp[PROC_NUM - 1:0] = (dl_detect_reg[0] & ~dl_done_reg[0]) ? 'b1 : 'b0;
    genvar j;
    generate
    for(j = 1;j < PROC_NUM;j = j + 1) begin: F1
        assign origin_tmp[j*PROC_NUM +: PROC_NUM] = (dl_detect_reg[j] & ~dl_done_reg[j]) ? ('b1 << j) : origin_tmp[(j - 1)*PROC_NUM +: PROC_NUM];
    end
    endgenerate
    always @ (CS_fsm or origin_tmp) begin
        if (CS_fsm == ST_DL_DETECTED) begin
            origin = origin_tmp[(PROC_NUM - 1)*PROC_NUM +: PROC_NUM];
        end
        else begin
            origin = 'b0;
        end
    end

    
    // dl_in_vec_reg record the current cycle dl_in_vec
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            dl_in_vec_reg <= 'b0;
        end
        else begin
            if (CS_fsm == ST_DL_DETECTED) begin
                dl_in_vec_reg <= origin;
            end
            else if (CS_fsm == ST_DL_REPORT) begin
                dl_in_vec_reg <= dl_in_vec;
            end
        end
    end
    
    // find_df_deadlock to report the deadlock
    always @ (negedge dl_reset or posedge dl_clock) begin
        if (~dl_reset) begin
            find_df_deadlock <= 1'b0;
        end
        else begin
            if (CS_fsm == ST_DL_DETECTED && ((dl_detect_reg == dl_done_reg) || (stop_report_path == 1'b1))) begin
                find_df_deadlock <= 1'b1;
            end
            else if (CS_fsm == ST_IDLE) begin
                find_df_deadlock <= 1'b0;
            end
        end
    end
    
    // get the first valid proc index in dl vector
    function integer proc_index(input [PROC_NUM - 1:0] dl_vec);
        begin
            proc_index = 0;
            for (i = 0; i < PROC_NUM; i = i + 1) begin
                if (dl_vec[i]) begin
                    proc_index = i;
                end
            end
        end
    endfunction

    // get the proc path based on dl vector
    function [496:0] proc_path(input [PROC_NUM - 1:0] dl_vec);
        integer index;
        begin
            index = proc_index(dl_vec);
            case (index)
                0 : begin
                    proc_path = "process_images_process_images.entry_proc_U0";
                end
                1 : begin
                    proc_path = "process_images_process_images.Block_entry_gmem_rd_proc_U0";
                end
                2 : begin
                    proc_path = "process_images_process_images.Block_entry_proc_3_U0";
                end
                3 : begin
                    proc_path = "process_images_process_images.Block_entry_gmem_wr_proc_U0";
                end
                default : begin
                    proc_path = "unknown";
                end
            endcase
        end
    endfunction

    // print the headlines of deadlock detection
    task print_dl_head;
        begin
            $display("\n//////////////////////////////////////////////////////////////////////////////");
            $display("// ERROR!!! DEADLOCK DETECTED at %0t ns! SIMULATION WILL BE STOPPED! //", $time);
            $display("//////////////////////////////////////////////////////////////////////////////");
            fp = $fopen("deadlock_db.dat", "w");
        end
    endtask

    // print the start of a cycle
    task print_cycle_start(input reg [496:0] proc_path, input integer cycle_id);
        begin
            $display("/////////////////////////");
            $display("// Dependence cycle %0d:", cycle_id);
            $display("// (1): Process: %0s", proc_path);
            $fdisplay(fp, "Dependence_Cycle_ID %0d", cycle_id);
            $fdisplay(fp, "Dependence_Process_ID 1");
            $fdisplay(fp, "Dependence_Process_path %0s", proc_path);
        end
    endtask

    // print the end of deadlock detection
    task print_dl_end(input integer num, input integer record_time);
        begin
            $display("////////////////////////////////////////////////////////////////////////");
            $display("// Totally %0d cycles detected!", num);
            $display("////////////////////////////////////////////////////////////////////////");
            $display("// ERROR!!! DEADLOCK DETECTED at %0t ns! SIMULATION WILL BE STOPPED! //", record_time);
            $display("//////////////////////////////////////////////////////////////////////////////");
            $fdisplay(fp, "Dependence_Cycle_Number %0d", num);
            $fclose(fp);
        end
    endtask

    // print one proc component in the cycle
    task print_cycle_proc_comp(input reg [496:0] proc_path, input integer cycle_comp_id);
        begin
            $display("// (%0d): Process: %0s", cycle_comp_id, proc_path);
            $fdisplay(fp, "Dependence_Process_ID %0d", cycle_comp_id);
            $fdisplay(fp, "Dependence_Process_path %0s", proc_path);
        end
    endtask

    // print one channel component in the cycle
    task print_cycle_chan_comp(input [PROC_NUM - 1:0] dl_vec1, input [PROC_NUM - 1:0] dl_vec2);
        reg [440:0] chan_path;
        integer index1;
        integer index2;
        begin
            index1 = proc_index(dl_vec1);
            index2 = proc_index(dl_vec2);
            case (index1)
                0 : begin // for proc 'process_images_process_images.entry_proc_U0'
                    case(index2)
                    3: begin //  for dep proc 'process_images_process_images.Block_entry_gmem_wr_proc_U0'
// for dep channel 'process_images_process_images.conv_output_c_U' info is :
// blk sig is {~process_images_process_images_inst.entry_proc_U0.conv_output_c_blk_n data_FIFO}
                        if ((~entry_proc_U0.conv_output_c_blk_n)) begin
                            if (~conv_output_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'process_images_process_images.conv_output_c_U' written by process 'process_images_process_images.Block_entry_gmem_wr_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.conv_output_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~conv_output_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'process_images_process_images.conv_output_c_U' read by process 'process_images_process_images.Block_entry_gmem_wr_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.conv_output_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'process_images_process_images.max_output_c_U' info is :
// blk sig is {~process_images_process_images_inst.entry_proc_U0.max_output_c_blk_n data_FIFO}
                        if ((~entry_proc_U0.max_output_c_blk_n)) begin
                            if (~max_output_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'process_images_process_images.max_output_c_U' written by process 'process_images_process_images.Block_entry_gmem_wr_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.max_output_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~max_output_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'process_images_process_images.max_output_c_U' read by process 'process_images_process_images.Block_entry_gmem_wr_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.max_output_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'process_images_process_images.min_output_c_U' info is :
// blk sig is {~process_images_process_images_inst.entry_proc_U0.min_output_c_blk_n data_FIFO}
                        if ((~entry_proc_U0.min_output_c_blk_n)) begin
                            if (~min_output_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'process_images_process_images.min_output_c_U' written by process 'process_images_process_images.Block_entry_gmem_wr_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.min_output_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~min_output_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'process_images_process_images.min_output_c_U' read by process 'process_images_process_images.Block_entry_gmem_wr_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.min_output_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'process_images_process_images.avg_output_c_U' info is :
// blk sig is {~process_images_process_images_inst.entry_proc_U0.avg_output_c_blk_n data_FIFO}
                        if ((~entry_proc_U0.avg_output_c_blk_n)) begin
                            if (~avg_output_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'process_images_process_images.avg_output_c_U' written by process 'process_images_process_images.Block_entry_gmem_wr_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.avg_output_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~avg_output_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'process_images_process_images.avg_output_c_U' read by process 'process_images_process_images.Block_entry_gmem_wr_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.avg_output_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    1: begin //  for dep proc 'process_images_process_images.Block_entry_gmem_rd_proc_U0'
// for dep channel '' info is :
// blk sig is {{process_images_process_images_inst.ap_sync_entry_proc_U0_ap_ready & process_images_process_images_inst.entry_proc_U0.ap_idle & ~process_images_process_images_inst.ap_sync_Block_entry_gmem_rd_proc_U0_ap_ready} input_sync}
                        if ((ap_sync_entry_proc_U0_ap_ready & entry_proc_U0.ap_idle & ~ap_sync_Block_entry_gmem_rd_proc_U0_ap_ready)) begin
                            $display("//      Blocked by input sync logic with process : 'process_images_process_images.Block_entry_gmem_rd_proc_U0'");
                        end
                    end
                    2: begin //  for dep proc 'process_images_process_images.Block_entry_proc_3_U0'
// for dep channel '' info is :
// blk sig is {{process_images_process_images_inst.ap_sync_entry_proc_U0_ap_ready & process_images_process_images_inst.entry_proc_U0.ap_idle & ~process_images_process_images_inst.ap_sync_Block_entry_proc_3_U0_ap_ready} input_sync}
                        if ((ap_sync_entry_proc_U0_ap_ready & entry_proc_U0.ap_idle & ~ap_sync_Block_entry_proc_3_U0_ap_ready)) begin
                            $display("//      Blocked by input sync logic with process : 'process_images_process_images.Block_entry_proc_3_U0'");
                        end
                    end
                    endcase
                end
                1 : begin // for proc 'process_images_process_images.Block_entry_gmem_rd_proc_U0'
                    case(index2)
                    3: begin //  for dep proc 'process_images_process_images.Block_entry_gmem_wr_proc_U0'
// for dep channel 'process_images_process_images.conv_result_U' info is :
// blk sig is {{~process_images_process_images_inst.conv_result_U.i_full_n & process_images_process_images_inst.Block_entry_gmem_rd_proc_U0.ap_done & ap_done_reg_0 & ~process_images_process_images_inst.conv_result_U.t_read} data_PIPO}
                        if ((~conv_result_U.i_full_n & Block_entry_gmem_rd_proc_U0.ap_done & ap_done_reg_0 & ~conv_result_U.t_read)) begin
                            if (~conv_result_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'process_images_process_images.conv_result_U' written by process 'process_images_process_images.Block_entry_gmem_wr_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.conv_result_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~conv_result_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'process_images_process_images.conv_result_U' read by process 'process_images_process_images.Block_entry_gmem_wr_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.conv_result_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'process_images_process_images.max_result_U' info is :
// blk sig is {{~process_images_process_images_inst.max_result_U.i_full_n & process_images_process_images_inst.Block_entry_gmem_rd_proc_U0.ap_done & ap_done_reg_0 & ~process_images_process_images_inst.max_result_U.t_read} data_PIPO}
                        if ((~max_result_U.i_full_n & Block_entry_gmem_rd_proc_U0.ap_done & ap_done_reg_0 & ~max_result_U.t_read)) begin
                            if (~max_result_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'process_images_process_images.max_result_U' written by process 'process_images_process_images.Block_entry_gmem_wr_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.max_result_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~max_result_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'process_images_process_images.max_result_U' read by process 'process_images_process_images.Block_entry_gmem_wr_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.max_result_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'process_images_process_images.min_result_U' info is :
// blk sig is {{~process_images_process_images_inst.min_result_U.i_full_n & process_images_process_images_inst.Block_entry_gmem_rd_proc_U0.ap_done & ap_done_reg_0 & ~process_images_process_images_inst.min_result_U.t_read} data_PIPO}
                        if ((~min_result_U.i_full_n & Block_entry_gmem_rd_proc_U0.ap_done & ap_done_reg_0 & ~min_result_U.t_read)) begin
                            if (~min_result_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'process_images_process_images.min_result_U' written by process 'process_images_process_images.Block_entry_gmem_wr_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.min_result_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~min_result_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'process_images_process_images.min_result_U' read by process 'process_images_process_images.Block_entry_gmem_wr_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.min_result_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'process_images_process_images.avg_result_U' info is :
// blk sig is {{~process_images_process_images_inst.avg_result_U.i_full_n & process_images_process_images_inst.Block_entry_gmem_rd_proc_U0.ap_done & ap_done_reg_0 & ~process_images_process_images_inst.avg_result_U.t_read} data_PIPO}
                        if ((~avg_result_U.i_full_n & Block_entry_gmem_rd_proc_U0.ap_done & ap_done_reg_0 & ~avg_result_U.t_read)) begin
                            if (~avg_result_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'process_images_process_images.avg_result_U' written by process 'process_images_process_images.Block_entry_gmem_wr_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.avg_result_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~avg_result_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'process_images_process_images.avg_result_U' read by process 'process_images_process_images.Block_entry_gmem_wr_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.avg_result_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    0: begin //  for dep proc 'process_images_process_images.entry_proc_U0'
// for dep channel '' info is :
// blk sig is {{process_images_process_images_inst.ap_sync_Block_entry_gmem_rd_proc_U0_ap_ready & process_images_process_images_inst.Block_entry_gmem_rd_proc_U0.ap_idle & ~process_images_process_images_inst.ap_sync_entry_proc_U0_ap_ready} input_sync}
                        if ((ap_sync_Block_entry_gmem_rd_proc_U0_ap_ready & Block_entry_gmem_rd_proc_U0.ap_idle & ~ap_sync_entry_proc_U0_ap_ready)) begin
                            $display("//      Blocked by input sync logic with process : 'process_images_process_images.entry_proc_U0'");
                        end
                    end
                    2: begin //  for dep proc 'process_images_process_images.Block_entry_proc_3_U0'
// for dep channel '' info is :
// blk sig is {{process_images_process_images_inst.ap_sync_Block_entry_gmem_rd_proc_U0_ap_ready & process_images_process_images_inst.Block_entry_gmem_rd_proc_U0.ap_idle & ~process_images_process_images_inst.ap_sync_Block_entry_proc_3_U0_ap_ready} input_sync}
                        if ((ap_sync_Block_entry_gmem_rd_proc_U0_ap_ready & Block_entry_gmem_rd_proc_U0.ap_idle & ~ap_sync_Block_entry_proc_3_U0_ap_ready)) begin
                            $display("//      Blocked by input sync logic with process : 'process_images_process_images.Block_entry_proc_3_U0'");
                        end
                    end
                    endcase
                end
                2 : begin // for proc 'process_images_process_images.Block_entry_proc_3_U0'
                    case(index2)
                    0: begin //  for dep proc 'process_images_process_images.entry_proc_U0'
// for dep channel '' info is :
// blk sig is {{process_images_process_images_inst.ap_sync_Block_entry_proc_3_U0_ap_ready & process_images_process_images_inst.Block_entry_proc_3_U0.ap_idle & ~process_images_process_images_inst.ap_sync_entry_proc_U0_ap_ready} input_sync}
                        if ((ap_sync_Block_entry_proc_3_U0_ap_ready & Block_entry_proc_3_U0.ap_idle & ~ap_sync_entry_proc_U0_ap_ready)) begin
                            $display("//      Blocked by input sync logic with process : 'process_images_process_images.entry_proc_U0'");
                        end
                    end
                    1: begin //  for dep proc 'process_images_process_images.Block_entry_gmem_rd_proc_U0'
// for dep channel '' info is :
// blk sig is {{process_images_process_images_inst.ap_sync_Block_entry_proc_3_U0_ap_ready & process_images_process_images_inst.Block_entry_proc_3_U0.ap_idle & ~process_images_process_images_inst.ap_sync_Block_entry_gmem_rd_proc_U0_ap_ready} input_sync}
                        if ((ap_sync_Block_entry_proc_3_U0_ap_ready & Block_entry_proc_3_U0.ap_idle & ~ap_sync_Block_entry_gmem_rd_proc_U0_ap_ready)) begin
                            $display("//      Blocked by input sync logic with process : 'process_images_process_images.Block_entry_gmem_rd_proc_U0'");
                        end
                    end
                    endcase
                end
                3 : begin // for proc 'process_images_process_images.Block_entry_gmem_wr_proc_U0'
                    case(index2)
                    2: begin //  for dep proc 'process_images_process_images.Block_entry_proc_3_U0'
// for dep channel 'process_images_process_images.cmp3_loc_channel_U' info is :
// blk sig is {{~process_images_process_images_inst.cmp3_loc_channel_U.if_empty_n & process_images_process_images_inst.Block_entry_gmem_wr_proc_U0.ap_idle & ~process_images_process_images_inst.cmp3_loc_channel_U.if_write} TLF_FIFO}
                        if ((~cmp3_loc_channel_U.if_empty_n & Block_entry_gmem_wr_proc_U0.ap_idle & ~cmp3_loc_channel_U.if_write)) begin
                            if (~cmp3_loc_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'process_images_process_images.cmp3_loc_channel_U' written by process 'process_images_process_images.Block_entry_proc_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.cmp3_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~cmp3_loc_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'process_images_process_images.cmp3_loc_channel_U' read by process 'process_images_process_images.Block_entry_proc_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.cmp3_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'process_images_process_images.mul_loc_channel_U' info is :
// blk sig is {{~process_images_process_images_inst.mul_loc_channel_U.if_empty_n & process_images_process_images_inst.Block_entry_gmem_wr_proc_U0.ap_idle & ~process_images_process_images_inst.mul_loc_channel_U.if_write} TLF_FIFO}
                        if ((~mul_loc_channel_U.if_empty_n & Block_entry_gmem_wr_proc_U0.ap_idle & ~mul_loc_channel_U.if_write)) begin
                            if (~mul_loc_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'process_images_process_images.mul_loc_channel_U' written by process 'process_images_process_images.Block_entry_proc_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.mul_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~mul_loc_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'process_images_process_images.mul_loc_channel_U' read by process 'process_images_process_images.Block_entry_proc_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.mul_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'process_images_process_images.cmp111_loc_channel_U' info is :
// blk sig is {{~process_images_process_images_inst.cmp111_loc_channel_U.if_empty_n & process_images_process_images_inst.Block_entry_gmem_wr_proc_U0.ap_idle & ~process_images_process_images_inst.cmp111_loc_channel_U.if_write} TLF_FIFO}
                        if ((~cmp111_loc_channel_U.if_empty_n & Block_entry_gmem_wr_proc_U0.ap_idle & ~cmp111_loc_channel_U.if_write)) begin
                            if (~cmp111_loc_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'process_images_process_images.cmp111_loc_channel_U' written by process 'process_images_process_images.Block_entry_proc_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.cmp111_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~cmp111_loc_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'process_images_process_images.cmp111_loc_channel_U' read by process 'process_images_process_images.Block_entry_proc_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.cmp111_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'process_images_process_images.mul10_loc_channel_U' info is :
// blk sig is {{~process_images_process_images_inst.mul10_loc_channel_U.if_empty_n & process_images_process_images_inst.Block_entry_gmem_wr_proc_U0.ap_idle & ~process_images_process_images_inst.mul10_loc_channel_U.if_write} TLF_FIFO}
                        if ((~mul10_loc_channel_U.if_empty_n & Block_entry_gmem_wr_proc_U0.ap_idle & ~mul10_loc_channel_U.if_write)) begin
                            if (~mul10_loc_channel_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'process_images_process_images.mul10_loc_channel_U' written by process 'process_images_process_images.Block_entry_proc_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.mul10_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~mul10_loc_channel_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'process_images_process_images.mul10_loc_channel_U' read by process 'process_images_process_images.Block_entry_proc_3_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.mul10_loc_channel_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    0: begin //  for dep proc 'process_images_process_images.entry_proc_U0'
// for dep channel 'process_images_process_images.conv_output_c_U' info is :
// blk sig is {~process_images_process_images_inst.Block_entry_gmem_wr_proc_U0.conv_output_blk_n data_FIFO}
                        if ((~Block_entry_gmem_wr_proc_U0.conv_output_blk_n)) begin
                            if (~conv_output_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'process_images_process_images.conv_output_c_U' written by process 'process_images_process_images.entry_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.conv_output_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~conv_output_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'process_images_process_images.conv_output_c_U' read by process 'process_images_process_images.entry_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.conv_output_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'process_images_process_images.max_output_c_U' info is :
// blk sig is {~process_images_process_images_inst.Block_entry_gmem_wr_proc_U0.max_output_blk_n data_FIFO}
                        if ((~Block_entry_gmem_wr_proc_U0.max_output_blk_n)) begin
                            if (~max_output_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'process_images_process_images.max_output_c_U' written by process 'process_images_process_images.entry_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.max_output_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~max_output_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'process_images_process_images.max_output_c_U' read by process 'process_images_process_images.entry_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.max_output_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'process_images_process_images.min_output_c_U' info is :
// blk sig is {~process_images_process_images_inst.Block_entry_gmem_wr_proc_U0.min_output_blk_n data_FIFO}
                        if ((~Block_entry_gmem_wr_proc_U0.min_output_blk_n)) begin
                            if (~min_output_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'process_images_process_images.min_output_c_U' written by process 'process_images_process_images.entry_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.min_output_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~min_output_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'process_images_process_images.min_output_c_U' read by process 'process_images_process_images.entry_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.min_output_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'process_images_process_images.avg_output_c_U' info is :
// blk sig is {~process_images_process_images_inst.Block_entry_gmem_wr_proc_U0.avg_output_blk_n data_FIFO}
                        if ((~Block_entry_gmem_wr_proc_U0.avg_output_blk_n)) begin
                            if (~avg_output_c_U.if_empty_n) begin
                                $display("//      Blocked by empty input FIFO 'process_images_process_images.avg_output_c_U' written by process 'process_images_process_images.entry_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.avg_output_c_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~avg_output_c_U.if_full_n) begin
                                $display("//      Blocked by full output FIFO 'process_images_process_images.avg_output_c_U' read by process 'process_images_process_images.entry_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.avg_output_c_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    1: begin //  for dep proc 'process_images_process_images.Block_entry_gmem_rd_proc_U0'
// for dep channel 'process_images_process_images.conv_result_U' info is :
// blk sig is {{~process_images_process_images_inst.conv_result_U.t_empty_n & process_images_process_images_inst.Block_entry_gmem_wr_proc_U0.ap_idle & ~process_images_process_images_inst.conv_result_U.i_write} data_PIPO}
                        if ((~conv_result_U.t_empty_n & Block_entry_gmem_wr_proc_U0.ap_idle & ~conv_result_U.i_write)) begin
                            if (~conv_result_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'process_images_process_images.conv_result_U' written by process 'process_images_process_images.Block_entry_gmem_rd_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.conv_result_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~conv_result_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'process_images_process_images.conv_result_U' read by process 'process_images_process_images.Block_entry_gmem_rd_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.conv_result_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'process_images_process_images.max_result_U' info is :
// blk sig is {{~process_images_process_images_inst.max_result_U.t_empty_n & process_images_process_images_inst.Block_entry_gmem_wr_proc_U0.ap_idle & ~process_images_process_images_inst.max_result_U.i_write} data_PIPO}
                        if ((~max_result_U.t_empty_n & Block_entry_gmem_wr_proc_U0.ap_idle & ~max_result_U.i_write)) begin
                            if (~max_result_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'process_images_process_images.max_result_U' written by process 'process_images_process_images.Block_entry_gmem_rd_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.max_result_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~max_result_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'process_images_process_images.max_result_U' read by process 'process_images_process_images.Block_entry_gmem_rd_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.max_result_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'process_images_process_images.min_result_U' info is :
// blk sig is {{~process_images_process_images_inst.min_result_U.t_empty_n & process_images_process_images_inst.Block_entry_gmem_wr_proc_U0.ap_idle & ~process_images_process_images_inst.min_result_U.i_write} data_PIPO}
                        if ((~min_result_U.t_empty_n & Block_entry_gmem_wr_proc_U0.ap_idle & ~min_result_U.i_write)) begin
                            if (~min_result_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'process_images_process_images.min_result_U' written by process 'process_images_process_images.Block_entry_gmem_rd_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.min_result_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~min_result_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'process_images_process_images.min_result_U' read by process 'process_images_process_images.Block_entry_gmem_rd_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.min_result_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
// for dep channel 'process_images_process_images.avg_result_U' info is :
// blk sig is {{~process_images_process_images_inst.avg_result_U.t_empty_n & process_images_process_images_inst.Block_entry_gmem_wr_proc_U0.ap_idle & ~process_images_process_images_inst.avg_result_U.i_write} data_PIPO}
                        if ((~avg_result_U.t_empty_n & Block_entry_gmem_wr_proc_U0.ap_idle & ~avg_result_U.i_write)) begin
                            if (~avg_result_U.t_empty_n) begin
                                $display("//      Blocked by empty input PIPO 'process_images_process_images.avg_result_U' written by process 'process_images_process_images.Block_entry_gmem_rd_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.avg_result_U");
                                $fdisplay(fp, "Dependence_Channel_status EMPTY");
                            end
                            else if (~avg_result_U.i_full_n) begin
                                $display("//      Blocked by full output PIPO 'process_images_process_images.avg_result_U' read by process 'process_images_process_images.Block_entry_gmem_rd_proc_U0'");
                                $fdisplay(fp, "Dependence_Channel_path process_images_process_images.avg_result_U");
                                $fdisplay(fp, "Dependence_Channel_status FULL");
                            end
                        end
                    end
                    endcase
                end
            endcase
        end
    endtask

    // report
    initial begin : report_deadlock
        integer cycle_id;
        integer cycle_comp_id;
        integer record_time;
        wait (dl_reset == 1);
        cycle_id = 1;
        record_time = 0;
        while (1) begin
            @ (negedge dl_clock);
            case (CS_fsm)
                ST_DL_DETECTED: begin
                    cycle_comp_id = 2;
                    if (dl_detect_reg != dl_done_reg && stop_report_path == 1'b0) begin
                        if (dl_done_reg == 'b0) begin
                            print_dl_head;
                            record_time = $time;
                        end
                        print_cycle_start(proc_path(origin), cycle_id);
                        cycle_id = cycle_id + 1;
                    end
                    else begin
                        print_dl_end((cycle_id - 1),record_time);
                        @(negedge dl_clock);
                        @(negedge dl_clock);
                        $finish;
                    end
                end
                ST_DL_REPORT: begin
                    if ((|(dl_in_vec)) & ~(|(dl_in_vec & origin_reg)) & ~(|(reported_proc & dl_in_vec))) begin
                        print_cycle_chan_comp(dl_in_vec_reg, dl_in_vec);
                        print_cycle_proc_comp(proc_path(dl_in_vec), cycle_comp_id);
                        cycle_comp_id = cycle_comp_id + 1;
                    end
                    else if (~(|(dl_in_vec)))begin
                        print_cycle_chan_comp(dl_in_vec_reg, dl_in_vec);
                    end
                end
            endcase
        end
    end
 
