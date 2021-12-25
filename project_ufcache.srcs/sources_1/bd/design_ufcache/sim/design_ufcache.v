//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Wed Jan 27 06:19:42 2021
//Host        : DESKTOP-BP8NIBP running 64-bit major release  (build 9200)
//Command     : generate_target design_ufcache.bd
//Design      : design_ufcache
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_ufcache,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_ufcache,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=9,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_ufcache.hwdef" *) 
module design_ufcache
   (CLOCK_0,
    RESET_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLOCK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLOCK_0, ASSOCIATED_RESET RESET_0, CLK_DOMAIN design_ufcache_CLOCK_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input CLOCK_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input RESET_0;

  wire [63:0]ARM_CPU_0_PC;
  wire ARM_CPU_0_control_memread_out;
  wire ARM_CPU_0_control_memwrite_out;
  wire [63:0]ARM_CPU_0_mem_address_out;
  wire [63:0]ARM_CPU_0_mem_data_out;
  wire CLOCK_0_1;
  wire C_0_val;
  wire C_1_val;
  wire C_2_val;
  wire C_3_val;
  wire [63:0]Data_Memory_0_outputData;
  wire [31:0]IC_0_instruction_out;
  wire RESET_0_1;
  wire [63:0]check_0_dataout;
  wire hcm_0_C0out;
  wire hcm_0_C1out;
  wire hcm_0_C2out;
  wire hcm_0_C3out;
  wire [63:0]hcm_0_valueout;

  assign CLOCK_0_1 = CLOCK_0;
  assign RESET_0_1 = RESET_0;
  design_ufcache_ARM_CPU_0_0 ARM_CPU_0
       (.CLOCK(CLOCK_0_1),
        .IC(IC_0_instruction_out),
        .PC(ARM_CPU_0_PC),
        .RESET(RESET_0_1),
        .control_memread_out(ARM_CPU_0_control_memread_out),
        .control_memwrite_out(ARM_CPU_0_control_memwrite_out),
        .mem_address_out(ARM_CPU_0_mem_address_out),
        .mem_data_in(check_0_dataout),
        .mem_data_out(ARM_CPU_0_mem_data_out));
  design_ufcache_C_0_0 C_0
       (.E(hcm_0_C0out),
        .val(C_0_val));
  design_ufcache_C_1_0 C_1
       (.E(hcm_0_C1out),
        .val(C_1_val));
  design_ufcache_C_2_0 C_2
       (.E(hcm_0_C2out),
        .val(C_2_val));
  design_ufcache_C_3_0 C_3
       (.E(hcm_0_C3out),
        .val(C_3_val));
  design_ufcache_Data_Memory_0_0 Data_Memory_0
       (.CONTROL_MemRead(ARM_CPU_0_control_memread_out),
        .CONTROL_MemWrite(ARM_CPU_0_control_memwrite_out),
        .inputAddress(ARM_CPU_0_mem_address_out),
        .inputData(ARM_CPU_0_mem_data_out),
        .outputData(Data_Memory_0_outputData));
  design_ufcache_IC_0_0 IC_0
       (.PC_in(ARM_CPU_0_PC),
        .instruction_out(IC_0_instruction_out));
  design_ufcache_check_0_0 check_0
       (.cachedata(hcm_0_valueout),
        .data(Data_Memory_0_outputData),
        .dataout(check_0_dataout));
  design_ufcache_hcm_0_1 hcm_0
       (.C0(C_0_val),
        .C0out(hcm_0_C0out),
        .C1(C_1_val),
        .C1out(hcm_0_C1out),
        .C2(C_2_val),
        .C2out(hcm_0_C2out),
        .C3(C_3_val),
        .C3out(hcm_0_C3out),
        .RE(ARM_CPU_0_control_memread_out),
        .WE(ARM_CPU_0_control_memwrite_out),
        .address(ARM_CPU_0_mem_address_out),
        .value(ARM_CPU_0_mem_data_out),
        .valueout(hcm_0_valueout));
endmodule
