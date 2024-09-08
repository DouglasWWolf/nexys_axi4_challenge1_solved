//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Sun Sep  8 16:55:33 2024
//Host        : simtool-5 running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level.bd
//Design      : top_level
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module source_50mhz_imp_1DU1HTR
   (clk_in,
    resetn_in,
    sys_clk,
    sys_resetn);
  input clk_in;
  input resetn_in;
  output sys_clk;
  output [0:0]sys_resetn;

  wire clk_in1_0_1;
  wire ext_reset_in_0_1;
  wire system_clock_clk_100mhz;
  wire [0:0]system_reset_peripheral_aresetn;

  assign clk_in1_0_1 = clk_in;
  assign ext_reset_in_0_1 = resetn_in;
  assign sys_clk = system_clock_clk_100mhz;
  assign sys_resetn[0] = system_reset_peripheral_aresetn;
  top_level_clk_wiz_0_0 system_clock
       (.clk_50mhz(system_clock_clk_100mhz),
        .clk_in1(clk_in1_0_1));
  top_level_proc_sys_reset_0_0 system_reset
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(ext_reset_in_0_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(system_reset_peripheral_aresetn),
        .slowest_sync_clk(system_clock_clk_100mhz));
endmodule

(* CORE_GENERATION_INFO = "top_level,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=top_level,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=13,numReposBlks=11,numNonXlnxBlks=0,numHierBlks=2,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=4,da_bram_cntlr_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "top_level.hwdef" *) 
module top_level
   (CLK100MHZ,
    CPU_RESETN,
    UART_rxd,
    UART_txd);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK100MHZ, CLK_DOMAIN top_level_CLK100MHZ, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input CLK100MHZ;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CPU_RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CPU_RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input CPU_RESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART RxD" *) input UART_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 UART TxD" *) output UART_txd;

  wire axi_control_clear;
  wire axi_control_start_write;
  wire axi_uartlite_UART_RxD;
  wire axi_uartlite_UART_TxD;
  (* CONN_BUS_INFO = "aximm_to_axis_AXIS_OUT xilinx.com:interface:axis:1.0 None TDATA" *) (* DONT_TOUCH *) wire [511:0]aximm_to_axis_AXIS_OUT_TDATA;
  (* CONN_BUS_INFO = "aximm_to_axis_AXIS_OUT xilinx.com:interface:axis:1.0 None TKEEP" *) (* DONT_TOUCH *) wire [63:0]aximm_to_axis_AXIS_OUT_TKEEP;
  (* CONN_BUS_INFO = "aximm_to_axis_AXIS_OUT xilinx.com:interface:axis:1.0 None TLAST" *) (* DONT_TOUCH *) wire aximm_to_axis_AXIS_OUT_TLAST;
  (* CONN_BUS_INFO = "aximm_to_axis_AXIS_OUT xilinx.com:interface:axis:1.0 None TREADY" *) (* DONT_TOUCH *) wire aximm_to_axis_AXIS_OUT_TREADY;
  (* CONN_BUS_INFO = "aximm_to_axis_AXIS_OUT xilinx.com:interface:axis:1.0 None TVALID" *) (* DONT_TOUCH *) wire aximm_to_axis_AXIS_OUT_TVALID;
  wire clk_in1_0_1;
  wire ext_reset_in_0_1;
  wire source_100mhz_sys_clk;
  wire [0:0]source_100mhz_sys_resetn;
  wire system_interconnect_M00_AXI_ARADDR;
  wire [2:0]system_interconnect_M00_AXI_ARPROT;
  wire system_interconnect_M00_AXI_ARREADY;
  wire [0:0]system_interconnect_M00_AXI_ARVALID;
  wire system_interconnect_M00_AXI_AWADDR;
  wire [2:0]system_interconnect_M00_AXI_AWPROT;
  wire system_interconnect_M00_AXI_AWREADY;
  wire [0:0]system_interconnect_M00_AXI_AWVALID;
  wire [0:0]system_interconnect_M00_AXI_BREADY;
  wire [1:0]system_interconnect_M00_AXI_BRESP;
  wire system_interconnect_M00_AXI_BVALID;
  wire [31:0]system_interconnect_M00_AXI_RDATA;
  wire [0:0]system_interconnect_M00_AXI_RREADY;
  wire [1:0]system_interconnect_M00_AXI_RRESP;
  wire system_interconnect_M00_AXI_RVALID;
  wire system_interconnect_M00_AXI_WDATA;
  wire system_interconnect_M00_AXI_WREADY;
  wire system_interconnect_M00_AXI_WSTRB;
  wire [0:0]system_interconnect_M00_AXI_WVALID;
  wire system_interconnect_M01_AXI_ARADDR;
  wire [2:0]system_interconnect_M01_AXI_ARPROT;
  wire system_interconnect_M01_AXI_ARREADY;
  wire [0:0]system_interconnect_M01_AXI_ARVALID;
  wire system_interconnect_M01_AXI_AWADDR;
  wire [2:0]system_interconnect_M01_AXI_AWPROT;
  wire system_interconnect_M01_AXI_AWREADY;
  wire [0:0]system_interconnect_M01_AXI_AWVALID;
  wire [0:0]system_interconnect_M01_AXI_BREADY;
  wire [1:0]system_interconnect_M01_AXI_BRESP;
  wire system_interconnect_M01_AXI_BVALID;
  wire [31:0]system_interconnect_M01_AXI_RDATA;
  wire [0:0]system_interconnect_M01_AXI_RREADY;
  wire [1:0]system_interconnect_M01_AXI_RRESP;
  wire system_interconnect_M01_AXI_RVALID;
  wire system_interconnect_M01_AXI_WDATA;
  wire system_interconnect_M01_AXI_WREADY;
  wire system_interconnect_M01_AXI_WSTRB;
  wire [0:0]system_interconnect_M01_AXI_WVALID;
  wire uart_axi_bridge_M_AXI_ARADDR;
  wire [0:0]uart_axi_bridge_M_AXI_ARREADY;
  wire [0:0]uart_axi_bridge_M_AXI_ARVALID;
  wire uart_axi_bridge_M_AXI_AWADDR;
  wire [0:0]uart_axi_bridge_M_AXI_AWREADY;
  wire [0:0]uart_axi_bridge_M_AXI_AWVALID;
  wire [0:0]uart_axi_bridge_M_AXI_BREADY;
  wire [1:0]uart_axi_bridge_M_AXI_BRESP;
  wire [0:0]uart_axi_bridge_M_AXI_BVALID;
  wire uart_axi_bridge_M_AXI_RDATA;
  wire [0:0]uart_axi_bridge_M_AXI_RREADY;
  wire [1:0]uart_axi_bridge_M_AXI_RRESP;
  wire [0:0]uart_axi_bridge_M_AXI_RVALID;
  wire uart_axi_bridge_M_AXI_WDATA;
  wire [0:0]uart_axi_bridge_M_AXI_WREADY;
  wire uart_axi_bridge_M_AXI_WSTRB;
  wire [0:0]uart_axi_bridge_M_AXI_WVALID;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARADDR" *) (* DONT_TOUCH *) wire [31:0]writer_M_AXI_ARADDR;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARBURST" *) (* DONT_TOUCH *) wire [1:0]writer_M_AXI_ARBURST;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARCACHE" *) (* DONT_TOUCH *) wire [3:0]writer_M_AXI_ARCACHE;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARID" *) (* DONT_TOUCH *) wire [3:0]writer_M_AXI_ARID;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLEN" *) (* DONT_TOUCH *) wire [7:0]writer_M_AXI_ARLEN;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARLOCK" *) (* DONT_TOUCH *) wire writer_M_AXI_ARLOCK;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARPROT" *) (* DONT_TOUCH *) wire [2:0]writer_M_AXI_ARPROT;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARQOS" *) (* DONT_TOUCH *) wire [3:0]writer_M_AXI_ARQOS;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARREADY" *) (* DONT_TOUCH *) wire writer_M_AXI_ARREADY;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARSIZE" *) (* DONT_TOUCH *) wire [2:0]writer_M_AXI_ARSIZE;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 ARVALID" *) (* DONT_TOUCH *) wire writer_M_AXI_ARVALID;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWADDR" *) (* DONT_TOUCH *) wire [31:0]writer_M_AXI_AWADDR;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWBURST" *) (* DONT_TOUCH *) wire [1:0]writer_M_AXI_AWBURST;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWCACHE" *) (* DONT_TOUCH *) wire [3:0]writer_M_AXI_AWCACHE;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWID" *) (* DONT_TOUCH *) wire [3:0]writer_M_AXI_AWID;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLEN" *) (* DONT_TOUCH *) wire [7:0]writer_M_AXI_AWLEN;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWLOCK" *) (* DONT_TOUCH *) wire writer_M_AXI_AWLOCK;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWPROT" *) (* DONT_TOUCH *) wire [2:0]writer_M_AXI_AWPROT;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWQOS" *) (* DONT_TOUCH *) wire [3:0]writer_M_AXI_AWQOS;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWREADY" *) (* DONT_TOUCH *) wire writer_M_AXI_AWREADY;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWSIZE" *) (* DONT_TOUCH *) wire [2:0]writer_M_AXI_AWSIZE;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 AWVALID" *) (* DONT_TOUCH *) wire writer_M_AXI_AWVALID;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 BREADY" *) (* DONT_TOUCH *) wire writer_M_AXI_BREADY;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 BRESP" *) (* DONT_TOUCH *) wire [1:0]writer_M_AXI_BRESP;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 BVALID" *) (* DONT_TOUCH *) wire writer_M_AXI_BVALID;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RDATA" *) (* DONT_TOUCH *) wire [511:0]writer_M_AXI_RDATA;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RLAST" *) (* DONT_TOUCH *) wire writer_M_AXI_RLAST;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RREADY" *) (* DONT_TOUCH *) wire writer_M_AXI_RREADY;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RRESP" *) (* DONT_TOUCH *) wire [1:0]writer_M_AXI_RRESP;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 RVALID" *) (* DONT_TOUCH *) wire writer_M_AXI_RVALID;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WDATA" *) (* DONT_TOUCH *) wire [511:0]writer_M_AXI_WDATA;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WLAST" *) (* DONT_TOUCH *) wire writer_M_AXI_WLAST;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WREADY" *) (* DONT_TOUCH *) wire writer_M_AXI_WREADY;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WSTRB" *) (* DONT_TOUCH *) wire [63:0]writer_M_AXI_WSTRB;
  (* CONN_BUS_INFO = "writer_M_AXI xilinx.com:interface:aximm:1.0 AXI4 WVALID" *) (* DONT_TOUCH *) wire writer_M_AXI_WVALID;

  assign UART_txd = axi_uartlite_UART_TxD;
  assign axi_uartlite_UART_RxD = UART_rxd;
  assign clk_in1_0_1 = CLK100MHZ;
  assign ext_reset_in_0_1 = CPU_RESETN;
  top_level_axi_control_0_0 axi_control
       (.S_AXI_ARADDR({system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR,system_interconnect_M01_AXI_ARADDR}),
        .S_AXI_ARPROT(system_interconnect_M01_AXI_ARPROT),
        .S_AXI_ARREADY(system_interconnect_M01_AXI_ARREADY),
        .S_AXI_ARVALID(system_interconnect_M01_AXI_ARVALID),
        .S_AXI_AWADDR({system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR,system_interconnect_M01_AXI_AWADDR}),
        .S_AXI_AWPROT(system_interconnect_M01_AXI_AWPROT),
        .S_AXI_AWREADY(system_interconnect_M01_AXI_AWREADY),
        .S_AXI_AWVALID(system_interconnect_M01_AXI_AWVALID),
        .S_AXI_BREADY(system_interconnect_M01_AXI_BREADY),
        .S_AXI_BRESP(system_interconnect_M01_AXI_BRESP),
        .S_AXI_BVALID(system_interconnect_M01_AXI_BVALID),
        .S_AXI_RDATA(system_interconnect_M01_AXI_RDATA),
        .S_AXI_RREADY(system_interconnect_M01_AXI_RREADY),
        .S_AXI_RRESP(system_interconnect_M01_AXI_RRESP),
        .S_AXI_RVALID(system_interconnect_M01_AXI_RVALID),
        .S_AXI_WDATA({system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA,system_interconnect_M01_AXI_WDATA}),
        .S_AXI_WREADY(system_interconnect_M01_AXI_WREADY),
        .S_AXI_WSTRB({system_interconnect_M01_AXI_WSTRB,system_interconnect_M01_AXI_WSTRB,system_interconnect_M01_AXI_WSTRB,system_interconnect_M01_AXI_WSTRB}),
        .S_AXI_WVALID(system_interconnect_M01_AXI_WVALID),
        .clear(axi_control_clear),
        .clk(source_100mhz_sys_clk),
        .resetn(source_100mhz_sys_resetn),
        .start_write(axi_control_start_write));
  top_level_axi_revision_0_0 axi_revision
       (.AXI_ACLK(source_100mhz_sys_clk),
        .AXI_ARESETN(source_100mhz_sys_resetn),
        .S_AXI_ARADDR({system_interconnect_M00_AXI_ARADDR,system_interconnect_M00_AXI_ARADDR,system_interconnect_M00_AXI_ARADDR,system_interconnect_M00_AXI_ARADDR,system_interconnect_M00_AXI_ARADDR}),
        .S_AXI_ARPROT(system_interconnect_M00_AXI_ARPROT),
        .S_AXI_ARREADY(system_interconnect_M00_AXI_ARREADY),
        .S_AXI_ARVALID(system_interconnect_M00_AXI_ARVALID),
        .S_AXI_AWADDR({system_interconnect_M00_AXI_AWADDR,system_interconnect_M00_AXI_AWADDR,system_interconnect_M00_AXI_AWADDR,system_interconnect_M00_AXI_AWADDR,system_interconnect_M00_AXI_AWADDR}),
        .S_AXI_AWPROT(system_interconnect_M00_AXI_AWPROT),
        .S_AXI_AWREADY(system_interconnect_M00_AXI_AWREADY),
        .S_AXI_AWVALID(system_interconnect_M00_AXI_AWVALID),
        .S_AXI_BREADY(system_interconnect_M00_AXI_BREADY),
        .S_AXI_BRESP(system_interconnect_M00_AXI_BRESP),
        .S_AXI_BVALID(system_interconnect_M00_AXI_BVALID),
        .S_AXI_RDATA(system_interconnect_M00_AXI_RDATA),
        .S_AXI_RREADY(system_interconnect_M00_AXI_RREADY),
        .S_AXI_RRESP(system_interconnect_M00_AXI_RRESP),
        .S_AXI_RVALID(system_interconnect_M00_AXI_RVALID),
        .S_AXI_WDATA({system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA,system_interconnect_M00_AXI_WDATA}),
        .S_AXI_WREADY(system_interconnect_M00_AXI_WREADY),
        .S_AXI_WSTRB({system_interconnect_M00_AXI_WSTRB,system_interconnect_M00_AXI_WSTRB,system_interconnect_M00_AXI_WSTRB,system_interconnect_M00_AXI_WSTRB}),
        .S_AXI_WVALID(system_interconnect_M00_AXI_WVALID));
  top_level_aximm_to_axis_0_0 aximm_to_axis
       (.AXIS_OUT_TDATA(aximm_to_axis_AXIS_OUT_TDATA),
        .AXIS_OUT_TKEEP(aximm_to_axis_AXIS_OUT_TKEEP),
        .AXIS_OUT_TLAST(aximm_to_axis_AXIS_OUT_TLAST),
        .AXIS_OUT_TREADY(aximm_to_axis_AXIS_OUT_TREADY),
        .AXIS_OUT_TVALID(aximm_to_axis_AXIS_OUT_TVALID),
        .S_AXI_ARADDR(writer_M_AXI_ARADDR),
        .S_AXI_ARBURST(writer_M_AXI_ARBURST),
        .S_AXI_ARCACHE(writer_M_AXI_ARCACHE),
        .S_AXI_ARID(writer_M_AXI_ARID),
        .S_AXI_ARLEN(writer_M_AXI_ARLEN),
        .S_AXI_ARLOCK(writer_M_AXI_ARLOCK),
        .S_AXI_ARPROT(writer_M_AXI_ARPROT),
        .S_AXI_ARQOS(writer_M_AXI_ARQOS),
        .S_AXI_ARREADY(writer_M_AXI_ARREADY),
        .S_AXI_ARSIZE(writer_M_AXI_ARSIZE),
        .S_AXI_ARVALID(writer_M_AXI_ARVALID),
        .S_AXI_AWADDR(writer_M_AXI_AWADDR),
        .S_AXI_AWBURST(writer_M_AXI_AWBURST),
        .S_AXI_AWCACHE(writer_M_AXI_AWCACHE),
        .S_AXI_AWID(writer_M_AXI_AWID),
        .S_AXI_AWLEN(writer_M_AXI_AWLEN),
        .S_AXI_AWLOCK(writer_M_AXI_AWLOCK),
        .S_AXI_AWPROT(writer_M_AXI_AWPROT),
        .S_AXI_AWQOS(writer_M_AXI_AWQOS),
        .S_AXI_AWREADY(writer_M_AXI_AWREADY),
        .S_AXI_AWSIZE(writer_M_AXI_AWSIZE),
        .S_AXI_AWVALID(writer_M_AXI_AWVALID),
        .S_AXI_BREADY(writer_M_AXI_BREADY),
        .S_AXI_BRESP(writer_M_AXI_BRESP),
        .S_AXI_BVALID(writer_M_AXI_BVALID),
        .S_AXI_RDATA(writer_M_AXI_RDATA),
        .S_AXI_RLAST(writer_M_AXI_RLAST),
        .S_AXI_RREADY(writer_M_AXI_RREADY),
        .S_AXI_RRESP(writer_M_AXI_RRESP),
        .S_AXI_RVALID(writer_M_AXI_RVALID),
        .S_AXI_WDATA(writer_M_AXI_WDATA),
        .S_AXI_WLAST(writer_M_AXI_WLAST),
        .S_AXI_WREADY(writer_M_AXI_WREADY),
        .S_AXI_WSTRB(writer_M_AXI_WSTRB),
        .S_AXI_WVALID(writer_M_AXI_WVALID),
        .clk(source_100mhz_sys_clk),
        .resetn(source_100mhz_sys_resetn));
  top_level_data_consumer_0_0 data_consumer
       (.AXIS_RX_TDATA(aximm_to_axis_AXIS_OUT_TDATA),
        .AXIS_RX_TKEEP(aximm_to_axis_AXIS_OUT_TKEEP),
        .AXIS_RX_TLAST(aximm_to_axis_AXIS_OUT_TLAST),
        .AXIS_RX_TREADY(aximm_to_axis_AXIS_OUT_TREADY),
        .AXIS_RX_TVALID(aximm_to_axis_AXIS_OUT_TVALID),
        .clk(source_100mhz_sys_clk),
        .resetn(source_100mhz_sys_resetn));
  source_50mhz_imp_1DU1HTR source_50mhz
       (.clk_in(clk_in1_0_1),
        .resetn_in(ext_reset_in_0_1),
        .sys_clk(source_100mhz_sys_clk),
        .sys_resetn(source_100mhz_sys_resetn));
  top_level_system_ila_0_0 system_ila
       (.SLOT_0_AXI_araddr(writer_M_AXI_ARADDR[0]),
        .SLOT_0_AXI_arburst(writer_M_AXI_ARBURST),
        .SLOT_0_AXI_arcache(writer_M_AXI_ARCACHE),
        .SLOT_0_AXI_arid(writer_M_AXI_ARID[0]),
        .SLOT_0_AXI_arlen(writer_M_AXI_ARLEN[0]),
        .SLOT_0_AXI_arlock(writer_M_AXI_ARLOCK),
        .SLOT_0_AXI_arprot(writer_M_AXI_ARPROT),
        .SLOT_0_AXI_arqos(writer_M_AXI_ARQOS),
        .SLOT_0_AXI_arready(writer_M_AXI_ARREADY),
        .SLOT_0_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_arsize(writer_M_AXI_ARSIZE),
        .SLOT_0_AXI_aruser(1'b0),
        .SLOT_0_AXI_arvalid(writer_M_AXI_ARVALID),
        .SLOT_0_AXI_awaddr(writer_M_AXI_AWADDR[0]),
        .SLOT_0_AXI_awburst(writer_M_AXI_AWBURST),
        .SLOT_0_AXI_awcache(writer_M_AXI_AWCACHE),
        .SLOT_0_AXI_awid(writer_M_AXI_AWID[0]),
        .SLOT_0_AXI_awlen(writer_M_AXI_AWLEN[0]),
        .SLOT_0_AXI_awlock(writer_M_AXI_AWLOCK),
        .SLOT_0_AXI_awprot(writer_M_AXI_AWPROT),
        .SLOT_0_AXI_awqos(writer_M_AXI_AWQOS),
        .SLOT_0_AXI_awready(writer_M_AXI_AWREADY),
        .SLOT_0_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .SLOT_0_AXI_awsize(writer_M_AXI_AWSIZE),
        .SLOT_0_AXI_awuser(1'b0),
        .SLOT_0_AXI_awvalid(writer_M_AXI_AWVALID),
        .SLOT_0_AXI_bid(1'b0),
        .SLOT_0_AXI_bready(writer_M_AXI_BREADY),
        .SLOT_0_AXI_bresp(writer_M_AXI_BRESP),
        .SLOT_0_AXI_buser(1'b0),
        .SLOT_0_AXI_bvalid(writer_M_AXI_BVALID),
        .SLOT_0_AXI_rdata(writer_M_AXI_RDATA[0]),
        .SLOT_0_AXI_rid(1'b0),
        .SLOT_0_AXI_rlast(writer_M_AXI_RLAST),
        .SLOT_0_AXI_rready(writer_M_AXI_RREADY),
        .SLOT_0_AXI_rresp(writer_M_AXI_RRESP),
        .SLOT_0_AXI_ruser(1'b0),
        .SLOT_0_AXI_rvalid(writer_M_AXI_RVALID),
        .SLOT_0_AXI_wdata(writer_M_AXI_WDATA[0]),
        .SLOT_0_AXI_wid(1'b0),
        .SLOT_0_AXI_wlast(writer_M_AXI_WLAST),
        .SLOT_0_AXI_wready(writer_M_AXI_WREADY),
        .SLOT_0_AXI_wstrb(writer_M_AXI_WSTRB[0]),
        .SLOT_0_AXI_wuser(1'b0),
        .SLOT_0_AXI_wvalid(writer_M_AXI_WVALID),
        .SLOT_1_AXIS_tdata(aximm_to_axis_AXIS_OUT_TDATA[0]),
        .SLOT_1_AXIS_tdest(1'b0),
        .SLOT_1_AXIS_tid(1'b0),
        .SLOT_1_AXIS_tkeep(aximm_to_axis_AXIS_OUT_TKEEP[0]),
        .SLOT_1_AXIS_tlast(aximm_to_axis_AXIS_OUT_TLAST),
        .SLOT_1_AXIS_tready(aximm_to_axis_AXIS_OUT_TREADY),
        .SLOT_1_AXIS_tstrb(1'b1),
        .SLOT_1_AXIS_tuser(1'b0),
        .SLOT_1_AXIS_tvalid(aximm_to_axis_AXIS_OUT_TVALID),
        .clk(source_100mhz_sys_clk),
        .resetn(1'b0));
  top_level_smartconnect_0_0 system_interconnect
       (.M00_AXI_araddr(system_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arprot(system_interconnect_M00_AXI_ARPROT),
        .M00_AXI_arready(system_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(system_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(system_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awprot(system_interconnect_M00_AXI_AWPROT),
        .M00_AXI_awready(system_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(system_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bid(1'b0),
        .M00_AXI_bready(system_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(system_interconnect_M00_AXI_BRESP),
        .M00_AXI_buser(1'b0),
        .M00_AXI_bvalid(system_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(system_interconnect_M00_AXI_RDATA[0]),
        .M00_AXI_rid(1'b0),
        .M00_AXI_rlast(1'b0),
        .M00_AXI_rready(system_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(system_interconnect_M00_AXI_RRESP),
        .M00_AXI_ruser(1'b0),
        .M00_AXI_rvalid(system_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(system_interconnect_M00_AXI_WDATA),
        .M00_AXI_wready(system_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(system_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(system_interconnect_M00_AXI_WVALID),
        .M01_AXI_araddr(system_interconnect_M01_AXI_ARADDR),
        .M01_AXI_arprot(system_interconnect_M01_AXI_ARPROT),
        .M01_AXI_arready(system_interconnect_M01_AXI_ARREADY),
        .M01_AXI_arvalid(system_interconnect_M01_AXI_ARVALID),
        .M01_AXI_awaddr(system_interconnect_M01_AXI_AWADDR),
        .M01_AXI_awprot(system_interconnect_M01_AXI_AWPROT),
        .M01_AXI_awready(system_interconnect_M01_AXI_AWREADY),
        .M01_AXI_awvalid(system_interconnect_M01_AXI_AWVALID),
        .M01_AXI_bid(1'b0),
        .M01_AXI_bready(system_interconnect_M01_AXI_BREADY),
        .M01_AXI_bresp(system_interconnect_M01_AXI_BRESP),
        .M01_AXI_buser(1'b0),
        .M01_AXI_bvalid(system_interconnect_M01_AXI_BVALID),
        .M01_AXI_rdata(system_interconnect_M01_AXI_RDATA[0]),
        .M01_AXI_rid(1'b0),
        .M01_AXI_rlast(1'b0),
        .M01_AXI_rready(system_interconnect_M01_AXI_RREADY),
        .M01_AXI_rresp(system_interconnect_M01_AXI_RRESP),
        .M01_AXI_ruser(1'b0),
        .M01_AXI_rvalid(system_interconnect_M01_AXI_RVALID),
        .M01_AXI_wdata(system_interconnect_M01_AXI_WDATA),
        .M01_AXI_wready(system_interconnect_M01_AXI_WREADY),
        .M01_AXI_wstrb(system_interconnect_M01_AXI_WSTRB),
        .M01_AXI_wvalid(system_interconnect_M01_AXI_WVALID),
        .S00_AXI_araddr(uart_axi_bridge_M_AXI_ARADDR),
        .S00_AXI_arburst({1'b0,1'b1}),
        .S00_AXI_arcache({1'b0,1'b0,1'b1,1'b1}),
        .S00_AXI_arid(1'b0),
        .S00_AXI_arlen(1'b0),
        .S00_AXI_arlock(1'b0),
        .S00_AXI_arprot({1'b0,1'b0,1'b0}),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(uart_axi_bridge_M_AXI_ARREADY),
        .S00_AXI_arregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arsize({1'b0,1'b1,1'b0}),
        .S00_AXI_aruser(1'b0),
        .S00_AXI_arvalid(uart_axi_bridge_M_AXI_ARVALID),
        .S00_AXI_awaddr(uart_axi_bridge_M_AXI_AWADDR),
        .S00_AXI_awburst({1'b0,1'b1}),
        .S00_AXI_awcache({1'b0,1'b0,1'b1,1'b1}),
        .S00_AXI_awid(1'b0),
        .S00_AXI_awlen(1'b0),
        .S00_AXI_awlock(1'b0),
        .S00_AXI_awprot({1'b0,1'b0,1'b0}),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(uart_axi_bridge_M_AXI_AWREADY),
        .S00_AXI_awregion({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awsize({1'b0,1'b1,1'b0}),
        .S00_AXI_awuser(1'b0),
        .S00_AXI_awvalid(uart_axi_bridge_M_AXI_AWVALID),
        .S00_AXI_bready(uart_axi_bridge_M_AXI_BREADY),
        .S00_AXI_bresp(uart_axi_bridge_M_AXI_BRESP),
        .S00_AXI_bvalid(uart_axi_bridge_M_AXI_BVALID),
        .S00_AXI_rdata(uart_axi_bridge_M_AXI_RDATA),
        .S00_AXI_rready(uart_axi_bridge_M_AXI_RREADY),
        .S00_AXI_rresp(uart_axi_bridge_M_AXI_RRESP),
        .S00_AXI_rvalid(uart_axi_bridge_M_AXI_RVALID),
        .S00_AXI_wdata(uart_axi_bridge_M_AXI_WDATA),
        .S00_AXI_wid(1'b0),
        .S00_AXI_wlast(1'b0),
        .S00_AXI_wready(uart_axi_bridge_M_AXI_WREADY),
        .S00_AXI_wstrb(uart_axi_bridge_M_AXI_WSTRB),
        .S00_AXI_wuser(1'b0),
        .S00_AXI_wvalid(uart_axi_bridge_M_AXI_WVALID),
        .aclk(source_100mhz_sys_clk),
        .aresetn(source_100mhz_sys_resetn));
  uart_axi_bridge_imp_1TNTD43 uart_axi_bridge
       (.M_AXI_araddr(uart_axi_bridge_M_AXI_ARADDR),
        .M_AXI_arready(uart_axi_bridge_M_AXI_ARREADY),
        .M_AXI_arvalid(uart_axi_bridge_M_AXI_ARVALID),
        .M_AXI_awaddr(uart_axi_bridge_M_AXI_AWADDR),
        .M_AXI_awready(uart_axi_bridge_M_AXI_AWREADY),
        .M_AXI_awvalid(uart_axi_bridge_M_AXI_AWVALID),
        .M_AXI_bready(uart_axi_bridge_M_AXI_BREADY),
        .M_AXI_bresp(uart_axi_bridge_M_AXI_BRESP),
        .M_AXI_bvalid(uart_axi_bridge_M_AXI_BVALID),
        .M_AXI_rdata(uart_axi_bridge_M_AXI_RDATA),
        .M_AXI_rready(uart_axi_bridge_M_AXI_RREADY),
        .M_AXI_rresp(uart_axi_bridge_M_AXI_RRESP),
        .M_AXI_rvalid(uart_axi_bridge_M_AXI_RVALID),
        .M_AXI_wdata(uart_axi_bridge_M_AXI_WDATA),
        .M_AXI_wready(uart_axi_bridge_M_AXI_WREADY),
        .M_AXI_wstrb(uart_axi_bridge_M_AXI_WSTRB),
        .M_AXI_wvalid(uart_axi_bridge_M_AXI_WVALID),
        .UART_rxd(axi_uartlite_UART_RxD),
        .UART_txd(axi_uartlite_UART_TxD),
        .s_axi_aclk(source_100mhz_sys_clk),
        .s_axi_aresetn(source_100mhz_sys_resetn));
  top_level_writer_0_0 writer
       (.M_AXI_ARADDR(writer_M_AXI_ARADDR),
        .M_AXI_ARBURST(writer_M_AXI_ARBURST),
        .M_AXI_ARCACHE(writer_M_AXI_ARCACHE),
        .M_AXI_ARID(writer_M_AXI_ARID),
        .M_AXI_ARLEN(writer_M_AXI_ARLEN),
        .M_AXI_ARLOCK(writer_M_AXI_ARLOCK),
        .M_AXI_ARPROT(writer_M_AXI_ARPROT),
        .M_AXI_ARQOS(writer_M_AXI_ARQOS),
        .M_AXI_ARREADY(writer_M_AXI_ARREADY),
        .M_AXI_ARSIZE(writer_M_AXI_ARSIZE),
        .M_AXI_ARVALID(writer_M_AXI_ARVALID),
        .M_AXI_AWADDR(writer_M_AXI_AWADDR),
        .M_AXI_AWBURST(writer_M_AXI_AWBURST),
        .M_AXI_AWCACHE(writer_M_AXI_AWCACHE),
        .M_AXI_AWID(writer_M_AXI_AWID),
        .M_AXI_AWLEN(writer_M_AXI_AWLEN),
        .M_AXI_AWLOCK(writer_M_AXI_AWLOCK),
        .M_AXI_AWPROT(writer_M_AXI_AWPROT),
        .M_AXI_AWQOS(writer_M_AXI_AWQOS),
        .M_AXI_AWREADY(writer_M_AXI_AWREADY),
        .M_AXI_AWSIZE(writer_M_AXI_AWSIZE),
        .M_AXI_AWVALID(writer_M_AXI_AWVALID),
        .M_AXI_BREADY(writer_M_AXI_BREADY),
        .M_AXI_BRESP(writer_M_AXI_BRESP),
        .M_AXI_BVALID(writer_M_AXI_BVALID),
        .M_AXI_RDATA(writer_M_AXI_RDATA),
        .M_AXI_RLAST(writer_M_AXI_RLAST),
        .M_AXI_RREADY(writer_M_AXI_RREADY),
        .M_AXI_RRESP(writer_M_AXI_RRESP),
        .M_AXI_RVALID(writer_M_AXI_RVALID),
        .M_AXI_WDATA(writer_M_AXI_WDATA),
        .M_AXI_WLAST(writer_M_AXI_WLAST),
        .M_AXI_WREADY(writer_M_AXI_WREADY),
        .M_AXI_WSTRB(writer_M_AXI_WSTRB),
        .M_AXI_WVALID(writer_M_AXI_WVALID),
        .clear(axi_control_clear),
        .clk(source_100mhz_sys_clk),
        .resetn(source_100mhz_sys_resetn),
        .start(axi_control_start_write));
endmodule

module uart_axi_bridge_imp_1TNTD43
   (M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    UART_rxd,
    UART_txd,
    s_axi_aclk,
    s_axi_aresetn);
  output M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input UART_rxd;
  output UART_txd;
  input s_axi_aclk;
  input s_axi_aresetn;

  wire [63:0]axi_uart_bridge_M_AXI_ARADDR;
  wire [0:0]axi_uart_bridge_M_AXI_ARREADY;
  wire axi_uart_bridge_M_AXI_ARVALID;
  wire [63:0]axi_uart_bridge_M_AXI_AWADDR;
  wire [0:0]axi_uart_bridge_M_AXI_AWREADY;
  wire axi_uart_bridge_M_AXI_AWVALID;
  wire axi_uart_bridge_M_AXI_BREADY;
  wire [1:0]axi_uart_bridge_M_AXI_BRESP;
  wire [0:0]axi_uart_bridge_M_AXI_BVALID;
  wire axi_uart_bridge_M_AXI_RDATA;
  wire axi_uart_bridge_M_AXI_RREADY;
  wire [1:0]axi_uart_bridge_M_AXI_RRESP;
  wire [0:0]axi_uart_bridge_M_AXI_RVALID;
  wire [31:0]axi_uart_bridge_M_AXI_WDATA;
  wire [0:0]axi_uart_bridge_M_AXI_WREADY;
  wire [3:0]axi_uart_bridge_M_AXI_WSTRB;
  wire axi_uart_bridge_M_AXI_WVALID;
  wire [31:0]axi_uart_bridge_M_UART_ARADDR;
  wire axi_uart_bridge_M_UART_ARREADY;
  wire axi_uart_bridge_M_UART_ARVALID;
  wire [31:0]axi_uart_bridge_M_UART_AWADDR;
  wire axi_uart_bridge_M_UART_AWREADY;
  wire axi_uart_bridge_M_UART_AWVALID;
  wire axi_uart_bridge_M_UART_BREADY;
  wire [1:0]axi_uart_bridge_M_UART_BRESP;
  wire axi_uart_bridge_M_UART_BVALID;
  wire [31:0]axi_uart_bridge_M_UART_RDATA;
  wire axi_uart_bridge_M_UART_RREADY;
  wire [1:0]axi_uart_bridge_M_UART_RRESP;
  wire axi_uart_bridge_M_UART_RVALID;
  wire [31:0]axi_uart_bridge_M_UART_WDATA;
  wire axi_uart_bridge_M_UART_WREADY;
  wire [3:0]axi_uart_bridge_M_UART_WSTRB;
  wire axi_uart_bridge_M_UART_WVALID;
  wire axi_uartlite_UART_RxD;
  wire axi_uartlite_UART_TxD;
  wire axi_uartlite_interrupt;
  wire source_100mhz_sys_clk;
  wire source_100mhz_sys_resetn;

  assign M_AXI_araddr = axi_uart_bridge_M_AXI_ARADDR[0];
  assign M_AXI_arvalid[0] = axi_uart_bridge_M_AXI_ARVALID;
  assign M_AXI_awaddr = axi_uart_bridge_M_AXI_AWADDR[0];
  assign M_AXI_awvalid[0] = axi_uart_bridge_M_AXI_AWVALID;
  assign M_AXI_bready[0] = axi_uart_bridge_M_AXI_BREADY;
  assign M_AXI_rready[0] = axi_uart_bridge_M_AXI_RREADY;
  assign M_AXI_wdata = axi_uart_bridge_M_AXI_WDATA[0];
  assign M_AXI_wstrb = axi_uart_bridge_M_AXI_WSTRB[0];
  assign M_AXI_wvalid[0] = axi_uart_bridge_M_AXI_WVALID;
  assign UART_txd = axi_uartlite_UART_TxD;
  assign axi_uart_bridge_M_AXI_ARREADY = M_AXI_arready[0];
  assign axi_uart_bridge_M_AXI_AWREADY = M_AXI_awready[0];
  assign axi_uart_bridge_M_AXI_BRESP = M_AXI_bresp[1:0];
  assign axi_uart_bridge_M_AXI_BVALID = M_AXI_bvalid[0];
  assign axi_uart_bridge_M_AXI_RDATA = M_AXI_rdata;
  assign axi_uart_bridge_M_AXI_RRESP = M_AXI_rresp[1:0];
  assign axi_uart_bridge_M_AXI_RVALID = M_AXI_rvalid[0];
  assign axi_uart_bridge_M_AXI_WREADY = M_AXI_wready[0];
  assign axi_uartlite_UART_RxD = UART_rxd;
  assign source_100mhz_sys_clk = s_axi_aclk;
  assign source_100mhz_sys_resetn = s_axi_aresetn;
  top_level_axi_uart_bridge_0_0 axi_uart_bridge
       (.M_AXI_ARADDR(axi_uart_bridge_M_AXI_ARADDR),
        .M_AXI_ARREADY(axi_uart_bridge_M_AXI_ARREADY),
        .M_AXI_ARVALID(axi_uart_bridge_M_AXI_ARVALID),
        .M_AXI_AWADDR(axi_uart_bridge_M_AXI_AWADDR),
        .M_AXI_AWREADY(axi_uart_bridge_M_AXI_AWREADY),
        .M_AXI_AWVALID(axi_uart_bridge_M_AXI_AWVALID),
        .M_AXI_BREADY(axi_uart_bridge_M_AXI_BREADY),
        .M_AXI_BRESP(axi_uart_bridge_M_AXI_BRESP),
        .M_AXI_BVALID(axi_uart_bridge_M_AXI_BVALID),
        .M_AXI_RDATA({axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA,axi_uart_bridge_M_AXI_RDATA}),
        .M_AXI_RREADY(axi_uart_bridge_M_AXI_RREADY),
        .M_AXI_RRESP(axi_uart_bridge_M_AXI_RRESP),
        .M_AXI_RVALID(axi_uart_bridge_M_AXI_RVALID),
        .M_AXI_WDATA(axi_uart_bridge_M_AXI_WDATA),
        .M_AXI_WREADY(axi_uart_bridge_M_AXI_WREADY),
        .M_AXI_WSTRB(axi_uart_bridge_M_AXI_WSTRB),
        .M_AXI_WVALID(axi_uart_bridge_M_AXI_WVALID),
        .M_UART_ARADDR(axi_uart_bridge_M_UART_ARADDR),
        .M_UART_ARREADY(axi_uart_bridge_M_UART_ARREADY),
        .M_UART_ARVALID(axi_uart_bridge_M_UART_ARVALID),
        .M_UART_AWADDR(axi_uart_bridge_M_UART_AWADDR),
        .M_UART_AWREADY(axi_uart_bridge_M_UART_AWREADY),
        .M_UART_AWVALID(axi_uart_bridge_M_UART_AWVALID),
        .M_UART_BREADY(axi_uart_bridge_M_UART_BREADY),
        .M_UART_BRESP(axi_uart_bridge_M_UART_BRESP),
        .M_UART_BVALID(axi_uart_bridge_M_UART_BVALID),
        .M_UART_RDATA(axi_uart_bridge_M_UART_RDATA),
        .M_UART_RREADY(axi_uart_bridge_M_UART_RREADY),
        .M_UART_RRESP(axi_uart_bridge_M_UART_RRESP),
        .M_UART_RVALID(axi_uart_bridge_M_UART_RVALID),
        .M_UART_WDATA(axi_uart_bridge_M_UART_WDATA),
        .M_UART_WREADY(axi_uart_bridge_M_UART_WREADY),
        .M_UART_WSTRB(axi_uart_bridge_M_UART_WSTRB),
        .M_UART_WVALID(axi_uart_bridge_M_UART_WVALID),
        .UART_INT(axi_uartlite_interrupt),
        .aclk(source_100mhz_sys_clk),
        .aresetn(source_100mhz_sys_resetn));
  top_level_axi_uartlite_0_0 axi_uartlite
       (.interrupt(axi_uartlite_interrupt),
        .rx(axi_uartlite_UART_RxD),
        .s_axi_aclk(source_100mhz_sys_clk),
        .s_axi_araddr(axi_uart_bridge_M_UART_ARADDR[3:0]),
        .s_axi_aresetn(source_100mhz_sys_resetn),
        .s_axi_arready(axi_uart_bridge_M_UART_ARREADY),
        .s_axi_arvalid(axi_uart_bridge_M_UART_ARVALID),
        .s_axi_awaddr(axi_uart_bridge_M_UART_AWADDR[3:0]),
        .s_axi_awready(axi_uart_bridge_M_UART_AWREADY),
        .s_axi_awvalid(axi_uart_bridge_M_UART_AWVALID),
        .s_axi_bready(axi_uart_bridge_M_UART_BREADY),
        .s_axi_bresp(axi_uart_bridge_M_UART_BRESP),
        .s_axi_bvalid(axi_uart_bridge_M_UART_BVALID),
        .s_axi_rdata(axi_uart_bridge_M_UART_RDATA),
        .s_axi_rready(axi_uart_bridge_M_UART_RREADY),
        .s_axi_rresp(axi_uart_bridge_M_UART_RRESP),
        .s_axi_rvalid(axi_uart_bridge_M_UART_RVALID),
        .s_axi_wdata(axi_uart_bridge_M_UART_WDATA),
        .s_axi_wready(axi_uart_bridge_M_UART_WREADY),
        .s_axi_wstrb(axi_uart_bridge_M_UART_WSTRB),
        .s_axi_wvalid(axi_uart_bridge_M_UART_WVALID),
        .tx(axi_uartlite_UART_TxD));
endmodule
