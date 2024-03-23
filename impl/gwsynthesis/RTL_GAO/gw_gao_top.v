module gw_gao(
    \core_u/inst[31] ,
    \core_u/inst[30] ,
    \core_u/inst[29] ,
    \core_u/inst[28] ,
    \core_u/inst[27] ,
    \core_u/inst[26] ,
    \core_u/inst[25] ,
    \core_u/inst[24] ,
    \core_u/inst[23] ,
    \core_u/inst[22] ,
    \core_u/inst[21] ,
    \core_u/inst[20] ,
    \core_u/inst[19] ,
    \core_u/inst[18] ,
    \core_u/inst[17] ,
    \core_u/inst[16] ,
    \core_u/inst[15] ,
    \core_u/inst[14] ,
    \core_u/inst[13] ,
    \core_u/inst[12] ,
    \core_u/inst[11] ,
    \core_u/inst[10] ,
    \core_u/inst[9] ,
    \core_u/inst[8] ,
    \core_u/inst[7] ,
    \core_u/inst[6] ,
    \core_u/inst[5] ,
    \core_u/inst[4] ,
    \core_u/inst[3] ,
    \core_u/inst[2] ,
    \core_u/inst[1] ,
    \core_u/inst[0] ,
    \core_u/pc_out[31] ,
    \core_u/pc_out[30] ,
    \core_u/pc_out[29] ,
    \core_u/pc_out[28] ,
    \core_u/pc_out[27] ,
    \core_u/pc_out[26] ,
    \core_u/pc_out[25] ,
    \core_u/pc_out[24] ,
    \core_u/pc_out[23] ,
    \core_u/pc_out[22] ,
    \core_u/pc_out[21] ,
    \core_u/pc_out[20] ,
    \core_u/pc_out[19] ,
    \core_u/pc_out[18] ,
    \core_u/pc_out[17] ,
    \core_u/pc_out[16] ,
    \core_u/pc_out[15] ,
    \core_u/pc_out[14] ,
    \core_u/pc_out[13] ,
    \core_u/pc_out[12] ,
    \core_u/pc_out[11] ,
    \core_u/pc_out[10] ,
    \core_u/pc_out[9] ,
    \core_u/pc_out[8] ,
    \core_u/pc_out[7] ,
    \core_u/pc_out[6] ,
    \core_u/pc_out[5] ,
    \core_u/pc_out[4] ,
    \core_u/pc_out[3] ,
    \core_u/pc_out[2] ,
    \core_u/pc_out[1] ,
    \core_u/pc_out[0] ,
    \core_u/id_u/imm[31] ,
    \core_u/id_u/imm[30] ,
    \core_u/id_u/imm[29] ,
    \core_u/id_u/imm[28] ,
    \core_u/id_u/imm[27] ,
    \core_u/id_u/imm[26] ,
    \core_u/id_u/imm[25] ,
    \core_u/id_u/imm[24] ,
    \core_u/id_u/imm[23] ,
    \core_u/id_u/imm[22] ,
    \core_u/id_u/imm[21] ,
    \core_u/id_u/imm[20] ,
    \core_u/id_u/imm[19] ,
    \core_u/id_u/imm[18] ,
    \core_u/id_u/imm[17] ,
    \core_u/id_u/imm[16] ,
    \core_u/id_u/imm[15] ,
    \core_u/id_u/imm[14] ,
    \core_u/id_u/imm[13] ,
    \core_u/id_u/imm[12] ,
    \core_u/id_u/imm[11] ,
    \core_u/id_u/imm[10] ,
    \core_u/id_u/imm[9] ,
    \core_u/id_u/imm[8] ,
    \core_u/id_u/imm[7] ,
    \core_u/id_u/imm[6] ,
    \core_u/id_u/imm[5] ,
    \core_u/id_u/imm[4] ,
    \core_u/id_u/imm[3] ,
    \core_u/id_u/imm[2] ,
    \core_u/id_u/imm[1] ,
    \core_u/id_u/imm[0] ,
    rst,
    clk,
    tms_pad_i,
    tck_pad_i,
    tdi_pad_i,
    tdo_pad_o
);

input \core_u/inst[31] ;
input \core_u/inst[30] ;
input \core_u/inst[29] ;
input \core_u/inst[28] ;
input \core_u/inst[27] ;
input \core_u/inst[26] ;
input \core_u/inst[25] ;
input \core_u/inst[24] ;
input \core_u/inst[23] ;
input \core_u/inst[22] ;
input \core_u/inst[21] ;
input \core_u/inst[20] ;
input \core_u/inst[19] ;
input \core_u/inst[18] ;
input \core_u/inst[17] ;
input \core_u/inst[16] ;
input \core_u/inst[15] ;
input \core_u/inst[14] ;
input \core_u/inst[13] ;
input \core_u/inst[12] ;
input \core_u/inst[11] ;
input \core_u/inst[10] ;
input \core_u/inst[9] ;
input \core_u/inst[8] ;
input \core_u/inst[7] ;
input \core_u/inst[6] ;
input \core_u/inst[5] ;
input \core_u/inst[4] ;
input \core_u/inst[3] ;
input \core_u/inst[2] ;
input \core_u/inst[1] ;
input \core_u/inst[0] ;
input \core_u/pc_out[31] ;
input \core_u/pc_out[30] ;
input \core_u/pc_out[29] ;
input \core_u/pc_out[28] ;
input \core_u/pc_out[27] ;
input \core_u/pc_out[26] ;
input \core_u/pc_out[25] ;
input \core_u/pc_out[24] ;
input \core_u/pc_out[23] ;
input \core_u/pc_out[22] ;
input \core_u/pc_out[21] ;
input \core_u/pc_out[20] ;
input \core_u/pc_out[19] ;
input \core_u/pc_out[18] ;
input \core_u/pc_out[17] ;
input \core_u/pc_out[16] ;
input \core_u/pc_out[15] ;
input \core_u/pc_out[14] ;
input \core_u/pc_out[13] ;
input \core_u/pc_out[12] ;
input \core_u/pc_out[11] ;
input \core_u/pc_out[10] ;
input \core_u/pc_out[9] ;
input \core_u/pc_out[8] ;
input \core_u/pc_out[7] ;
input \core_u/pc_out[6] ;
input \core_u/pc_out[5] ;
input \core_u/pc_out[4] ;
input \core_u/pc_out[3] ;
input \core_u/pc_out[2] ;
input \core_u/pc_out[1] ;
input \core_u/pc_out[0] ;
input \core_u/id_u/imm[31] ;
input \core_u/id_u/imm[30] ;
input \core_u/id_u/imm[29] ;
input \core_u/id_u/imm[28] ;
input \core_u/id_u/imm[27] ;
input \core_u/id_u/imm[26] ;
input \core_u/id_u/imm[25] ;
input \core_u/id_u/imm[24] ;
input \core_u/id_u/imm[23] ;
input \core_u/id_u/imm[22] ;
input \core_u/id_u/imm[21] ;
input \core_u/id_u/imm[20] ;
input \core_u/id_u/imm[19] ;
input \core_u/id_u/imm[18] ;
input \core_u/id_u/imm[17] ;
input \core_u/id_u/imm[16] ;
input \core_u/id_u/imm[15] ;
input \core_u/id_u/imm[14] ;
input \core_u/id_u/imm[13] ;
input \core_u/id_u/imm[12] ;
input \core_u/id_u/imm[11] ;
input \core_u/id_u/imm[10] ;
input \core_u/id_u/imm[9] ;
input \core_u/id_u/imm[8] ;
input \core_u/id_u/imm[7] ;
input \core_u/id_u/imm[6] ;
input \core_u/id_u/imm[5] ;
input \core_u/id_u/imm[4] ;
input \core_u/id_u/imm[3] ;
input \core_u/id_u/imm[2] ;
input \core_u/id_u/imm[1] ;
input \core_u/id_u/imm[0] ;
input rst;
input clk;
input tms_pad_i;
input tck_pad_i;
input tdi_pad_i;
output tdo_pad_o;

wire \core_u/inst[31] ;
wire \core_u/inst[30] ;
wire \core_u/inst[29] ;
wire \core_u/inst[28] ;
wire \core_u/inst[27] ;
wire \core_u/inst[26] ;
wire \core_u/inst[25] ;
wire \core_u/inst[24] ;
wire \core_u/inst[23] ;
wire \core_u/inst[22] ;
wire \core_u/inst[21] ;
wire \core_u/inst[20] ;
wire \core_u/inst[19] ;
wire \core_u/inst[18] ;
wire \core_u/inst[17] ;
wire \core_u/inst[16] ;
wire \core_u/inst[15] ;
wire \core_u/inst[14] ;
wire \core_u/inst[13] ;
wire \core_u/inst[12] ;
wire \core_u/inst[11] ;
wire \core_u/inst[10] ;
wire \core_u/inst[9] ;
wire \core_u/inst[8] ;
wire \core_u/inst[7] ;
wire \core_u/inst[6] ;
wire \core_u/inst[5] ;
wire \core_u/inst[4] ;
wire \core_u/inst[3] ;
wire \core_u/inst[2] ;
wire \core_u/inst[1] ;
wire \core_u/inst[0] ;
wire \core_u/pc_out[31] ;
wire \core_u/pc_out[30] ;
wire \core_u/pc_out[29] ;
wire \core_u/pc_out[28] ;
wire \core_u/pc_out[27] ;
wire \core_u/pc_out[26] ;
wire \core_u/pc_out[25] ;
wire \core_u/pc_out[24] ;
wire \core_u/pc_out[23] ;
wire \core_u/pc_out[22] ;
wire \core_u/pc_out[21] ;
wire \core_u/pc_out[20] ;
wire \core_u/pc_out[19] ;
wire \core_u/pc_out[18] ;
wire \core_u/pc_out[17] ;
wire \core_u/pc_out[16] ;
wire \core_u/pc_out[15] ;
wire \core_u/pc_out[14] ;
wire \core_u/pc_out[13] ;
wire \core_u/pc_out[12] ;
wire \core_u/pc_out[11] ;
wire \core_u/pc_out[10] ;
wire \core_u/pc_out[9] ;
wire \core_u/pc_out[8] ;
wire \core_u/pc_out[7] ;
wire \core_u/pc_out[6] ;
wire \core_u/pc_out[5] ;
wire \core_u/pc_out[4] ;
wire \core_u/pc_out[3] ;
wire \core_u/pc_out[2] ;
wire \core_u/pc_out[1] ;
wire \core_u/pc_out[0] ;
wire \core_u/id_u/imm[31] ;
wire \core_u/id_u/imm[30] ;
wire \core_u/id_u/imm[29] ;
wire \core_u/id_u/imm[28] ;
wire \core_u/id_u/imm[27] ;
wire \core_u/id_u/imm[26] ;
wire \core_u/id_u/imm[25] ;
wire \core_u/id_u/imm[24] ;
wire \core_u/id_u/imm[23] ;
wire \core_u/id_u/imm[22] ;
wire \core_u/id_u/imm[21] ;
wire \core_u/id_u/imm[20] ;
wire \core_u/id_u/imm[19] ;
wire \core_u/id_u/imm[18] ;
wire \core_u/id_u/imm[17] ;
wire \core_u/id_u/imm[16] ;
wire \core_u/id_u/imm[15] ;
wire \core_u/id_u/imm[14] ;
wire \core_u/id_u/imm[13] ;
wire \core_u/id_u/imm[12] ;
wire \core_u/id_u/imm[11] ;
wire \core_u/id_u/imm[10] ;
wire \core_u/id_u/imm[9] ;
wire \core_u/id_u/imm[8] ;
wire \core_u/id_u/imm[7] ;
wire \core_u/id_u/imm[6] ;
wire \core_u/id_u/imm[5] ;
wire \core_u/id_u/imm[4] ;
wire \core_u/id_u/imm[3] ;
wire \core_u/id_u/imm[2] ;
wire \core_u/id_u/imm[1] ;
wire \core_u/id_u/imm[0] ;
wire rst;
wire clk;
wire tms_pad_i;
wire tck_pad_i;
wire tdi_pad_i;
wire tdo_pad_o;
wire tms_i_c;
wire tck_i_c;
wire tdi_i_c;
wire tdo_o_c;
wire [9:0] control0;
wire gao_jtag_tck;
wire gao_jtag_reset;
wire run_test_idle_er1;
wire run_test_idle_er2;
wire shift_dr_capture_dr;
wire update_dr;
wire pause_dr;
wire enable_er1;
wire enable_er2;
wire gao_jtag_tdi;
wire tdo_er1;

IBUF tms_ibuf (
    .I(tms_pad_i),
    .O(tms_i_c)
);

IBUF tck_ibuf (
    .I(tck_pad_i),
    .O(tck_i_c)
);

IBUF tdi_ibuf (
    .I(tdi_pad_i),
    .O(tdi_i_c)
);

OBUF tdo_obuf (
    .I(tdo_o_c),
    .O(tdo_pad_o)
);

GW_JTAG  u_gw_jtag(
    .tms_pad_i(tms_i_c),
    .tck_pad_i(tck_i_c),
    .tdi_pad_i(tdi_i_c),
    .tdo_pad_o(tdo_o_c),
    .tck_o(gao_jtag_tck),
    .test_logic_reset_o(gao_jtag_reset),
    .run_test_idle_er1_o(run_test_idle_er1),
    .run_test_idle_er2_o(run_test_idle_er2),
    .shift_dr_capture_dr_o(shift_dr_capture_dr),
    .update_dr_o(update_dr),
    .pause_dr_o(pause_dr),
    .enable_er1_o(enable_er1),
    .enable_er2_o(enable_er2),
    .tdi_o(gao_jtag_tdi),
    .tdo_er1_i(tdo_er1),
    .tdo_er2_i(1'b0)
);

gw_con_top  u_icon_top(
    .tck_i(gao_jtag_tck),
    .tdi_i(gao_jtag_tdi),
    .tdo_o(tdo_er1),
    .rst_i(gao_jtag_reset),
    .control0(control0[9:0]),
    .enable_i(enable_er1),
    .shift_dr_capture_dr_i(shift_dr_capture_dr),
    .update_dr_i(update_dr)
);

ao_top_0  u_la0_top(
    .control(control0[9:0]),
    .trig0_i(rst),
    .data_i({\core_u/inst[31] ,\core_u/inst[30] ,\core_u/inst[29] ,\core_u/inst[28] ,\core_u/inst[27] ,\core_u/inst[26] ,\core_u/inst[25] ,\core_u/inst[24] ,\core_u/inst[23] ,\core_u/inst[22] ,\core_u/inst[21] ,\core_u/inst[20] ,\core_u/inst[19] ,\core_u/inst[18] ,\core_u/inst[17] ,\core_u/inst[16] ,\core_u/inst[15] ,\core_u/inst[14] ,\core_u/inst[13] ,\core_u/inst[12] ,\core_u/inst[11] ,\core_u/inst[10] ,\core_u/inst[9] ,\core_u/inst[8] ,\core_u/inst[7] ,\core_u/inst[6] ,\core_u/inst[5] ,\core_u/inst[4] ,\core_u/inst[3] ,\core_u/inst[2] ,\core_u/inst[1] ,\core_u/inst[0] ,\core_u/pc_out[31] ,\core_u/pc_out[30] ,\core_u/pc_out[29] ,\core_u/pc_out[28] ,\core_u/pc_out[27] ,\core_u/pc_out[26] ,\core_u/pc_out[25] ,\core_u/pc_out[24] ,\core_u/pc_out[23] ,\core_u/pc_out[22] ,\core_u/pc_out[21] ,\core_u/pc_out[20] ,\core_u/pc_out[19] ,\core_u/pc_out[18] ,\core_u/pc_out[17] ,\core_u/pc_out[16] ,\core_u/pc_out[15] ,\core_u/pc_out[14] ,\core_u/pc_out[13] ,\core_u/pc_out[12] ,\core_u/pc_out[11] ,\core_u/pc_out[10] ,\core_u/pc_out[9] ,\core_u/pc_out[8] ,\core_u/pc_out[7] ,\core_u/pc_out[6] ,\core_u/pc_out[5] ,\core_u/pc_out[4] ,\core_u/pc_out[3] ,\core_u/pc_out[2] ,\core_u/pc_out[1] ,\core_u/pc_out[0] ,\core_u/id_u/imm[31] ,\core_u/id_u/imm[30] ,\core_u/id_u/imm[29] ,\core_u/id_u/imm[28] ,\core_u/id_u/imm[27] ,\core_u/id_u/imm[26] ,\core_u/id_u/imm[25] ,\core_u/id_u/imm[24] ,\core_u/id_u/imm[23] ,\core_u/id_u/imm[22] ,\core_u/id_u/imm[21] ,\core_u/id_u/imm[20] ,\core_u/id_u/imm[19] ,\core_u/id_u/imm[18] ,\core_u/id_u/imm[17] ,\core_u/id_u/imm[16] ,\core_u/id_u/imm[15] ,\core_u/id_u/imm[14] ,\core_u/id_u/imm[13] ,\core_u/id_u/imm[12] ,\core_u/id_u/imm[11] ,\core_u/id_u/imm[10] ,\core_u/id_u/imm[9] ,\core_u/id_u/imm[8] ,\core_u/id_u/imm[7] ,\core_u/id_u/imm[6] ,\core_u/id_u/imm[5] ,\core_u/id_u/imm[4] ,\core_u/id_u/imm[3] ,\core_u/id_u/imm[2] ,\core_u/id_u/imm[1] ,\core_u/id_u/imm[0] }),
    .clk_i(clk)
);

endmodule
