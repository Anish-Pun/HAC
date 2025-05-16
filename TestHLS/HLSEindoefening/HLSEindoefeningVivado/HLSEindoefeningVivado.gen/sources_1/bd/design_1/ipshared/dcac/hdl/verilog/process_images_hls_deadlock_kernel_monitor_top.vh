
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [4:0] axis_block_sigs;
wire [3:0] inst_idle_sigs;
wire [0:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~grp_process_images_Pipeline_VITIS_LOOP_21_1_VITIS_LOOP_22_2_fu_198.in_stream_TDATA_blk_n;
assign axis_block_sigs[1] = ~grp_process_images_Pipeline_VITIS_LOOP_82_9_VITIS_LOOP_83_10_fu_252.conv_out_TDATA_blk_n;
assign axis_block_sigs[2] = ~grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275.max_out_TDATA_blk_n;
assign axis_block_sigs[3] = ~grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275.min_out_TDATA_blk_n;
assign axis_block_sigs[4] = ~grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275.avg_out_TDATA_blk_n;

assign inst_block_sigs[0] = 1'b0;

assign inst_idle_sigs[0] = 1'b0;
assign inst_idle_sigs[1] = grp_process_images_Pipeline_VITIS_LOOP_21_1_VITIS_LOOP_22_2_fu_198.ap_idle;
assign inst_idle_sigs[2] = grp_process_images_Pipeline_VITIS_LOOP_82_9_VITIS_LOOP_83_10_fu_252.ap_idle;
assign inst_idle_sigs[3] = grp_process_images_Pipeline_VITIS_LOOP_98_11_VITIS_LOOP_99_12_fu_275.ap_idle;

process_images_hls_deadlock_idx0_monitor process_images_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
