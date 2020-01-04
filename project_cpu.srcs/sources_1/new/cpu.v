`include "defines.v"

// RISCV32I CPU top module
// port modification allowed for debugging purposes

module cpu(
    input  wire                 clk_in,			// system clock signal
    input  wire                 rst_in,			// reset signal
	input  wire				    rdy_in,			// ready signal, pause cpu when low

    input  wire [ 7:0]          mem_din,		// data input bus
    output wire [ 7:0]          mem_dout,		// data output bus
    output wire [31:0]          mem_a,			// address bus (only 17:0 is used)
    output wire                 mem_wr,			// write/read signal (1 for write)

	output wire [31:0]			dbgreg_dout		// cpu register output (debugging demo)
);
wire rst_i;
assign rst_i = rst_in | !rdy_in;
// implementation goes here

// Specifications:
// - Pause cpu(freeze pc, registers, etc.) when rdy_in is low
// - Memory read takes 2 cycles(wait till next cycle), write takes 1 cycle(no need to wait)
// - Memory is of size 128KB, with valid address ranging from 0x0 to 0x20000
// - I/O port is mapped to address higher than 0x30000 (mem_a[17:16]==2'b11)
// - 0x30000 read: read a byte from input
// - 0x30000 write: write a byte to output (write 0x00 is ignored)
// - 0x30004 read: read clocks passed since cpu starts (in dword, 4 bytes)
// - 0x30004 write: indicates program stop (will output '\0' through uart tx)

	wire[`InstAddrBus] pc;
	wire pc_stalling;
	wire[`InstAddrBus] id_pc_i;
	wire[`InstBus] id_inst_i;

	wire[`InstBus] inst;
	
	wire[`AluOpBus] id_aluop_o;
	wire[`AluSelBus] id_alusel_o;
	wire[`RegBus] id_reg1_o;
	wire[`RegBus] id_reg2_o;
	wire id_wreg_o;
	wire[`RegAddrBus] id_wd_o;
	
	wire[`AluOpBus] ex_aluop_i;
	wire[`AluSelBus] ex_alusel_i;
	wire[`RegBus] ex_reg1_i;
	wire[`RegBus] ex_reg2_i;
	wire ex_wreg_i;
	wire[`RegAddrBus] ex_wd_i;
	
	wire ex_wreg_o;
	wire[`RegAddrBus] ex_wd_o;
	wire[`RegBus] ex_wdata_o;

	wire mem_wreg_i;
	wire[`RegAddrBus] mem_wd_i;
	wire[`RegBus] mem_wdata_i;

	wire mem_wreg_o;
	wire[`RegAddrBus] mem_wd_o;
	wire[`RegBus] mem_wdata_o;
	
	wire wb_wreg_i;
	wire[`RegAddrBus] wb_wd_i;
	wire[`RegBus] wb_wdata_i;
	
	wire reg1_read;
	wire reg2_read;
	
	wire[`RegBus] reg1_data;
	wire[`RegBus] reg2_data;
	wire[`RegAddrBus] reg1_addr;
	wire[`RegAddrBus] reg2_addr;

	wire[`CtrlBus] stall_ctrl;
	wire stall_if;
	wire stall_id;
	wire stall_mem;

    wire read_inst;
    wire[`AddrBus] read_inst_addr;
    wire op_data;
    wire[`AddrBus] op_data_addr;
    wire op_rw;
    wire[2:0] op_num;
    wire[`DataBus] write_content;
    wire read_inst_ok;
    wire op_data_ok;
    wire ram_rw;
    wire[`AddrBus] address_o;
    wire[`DataBus] write_ram_o;
    wire[`DataBus] mem_result;

	wire br;
	wire[`InstAddrBus] npc;
  
	wire[`RegBus] id_imm;
	// wire id_func7;
	wire[`InstAddrBus] id_pc;

	wire[`RegBus] ex_imm;
	// wire ex_func7;
	wire[`InstAddrBus] ex_pc;

	wire[`InstAddrBus] ex_pc_o;
	
    wire[`AddrBus] exStage_mem_data_addr;
    wire exStage_mem_rw;
    wire[2:0] exStage_byte_num;
    wire ex_sign;

    wire[`AddrBus] memStage_mem_data_addr;
    wire memStage_mem_rw;
    wire[2:0] memStage_byte_num;
    wire mem_sign;
	wire[`AddrBus] mem_pc_i;
	wire[`AddrBus] mem_pc_o;
	wire[`InstAddrBus] if_pc_o;

	wire[1:0] mem_ctrl_state;

	wire addi_id;
	wire addi_ex;

	wire[`RegAddrBus] wd_back;
    wire wreg_back;
    wire signed_back;
    wire[2:0] op_num_back;
    wire[`RegAddrBus] wd_mem;
    wire wreg_mem;
    wire signed_mem;

	pc_reg pc_reg0(
		.clk(clk_in),
		.rst(rst_i),
		.stall(stall_ctrl),
		.br(br),
		.des_pc(npc),
		.pc(pc),
		.pc_stalling(pc_stalling)
		// .wr(mem_wr)	
	);
	

	iFetch iFetch0(
		.rst(rst_i),
		.pc(pc),
		.pc_stalling(pc_stalling),
		.read_inst_ok(read_inst_ok),
		.read_inst_data(mem_result),
		.stall(stall_if),
		.reading(read_inst),
		.read_inst_addr(read_inst_addr),
		.pc_o(if_pc_o),
		.inst_o(inst)
	);

	ctrl ctrl0(
		.rst(rst_i),
		.stallreq_from_if(stall_if),
		.stallreq_from_id(stall_id),
		.stallreq_from_ex(`Disable),
		.stallreq_from_mem(stall_mem),
		.stall(stall_ctrl)
	);

	mem_ctrl mem_ctrl0(
		.clk(clk_in),
		.rst(rst_i),
		.read_inst_i(read_inst),
		.read_inst_addr(read_inst_addr),
		.op_data_i(op_data),
		.op_data_addr(op_data_addr),
		.op_rw(op_rw),
		.op_num(op_num),
		.write_content(write_content),
		.mem_return(mem_din),

		.br(br),

		.read_inst_ok(read_inst_ok),
		.op_data_ok(op_data_ok),
		.ram_rw(mem_wr),
		.address_o(mem_a),
		.write_ram_o(mem_dout),
		.result_o(mem_result),
		.state(mem_ctrl_state),

		.wd_back(wd_back),
		.wreg_back(wreg_back),
		.signed_back(signed_back),
		.op_num_back(op_num_back),
		.wd_mem(wd_mem),
		.wreg_mem(wreg_mem),
		.signed_mem(signed_mem)
	);

	if_id if_id0(
		.clk(clk_in),
		.rst(rst_i),
		.stall(stall_ctrl),
		.if_pc(if_pc_o),
		.if_inst(inst),
		.br(br),
		.id_pc(id_pc_i),
		.id_inst(id_inst_i)      	
	);
	
	id id0(
		.rst(rst_i),
		.pc_i(id_pc_i),
		.inst_i(id_inst_i),

		.branch_interception(br),

		.reg1_data_i(reg1_data),
		.reg2_data_i(reg2_data),

		.ex_wreg_i(ex_wreg_o),
		.ex_wdata_i(ex_wdata_o),
		.ex_wd_i(ex_wd_o),
		.ex_byte_num(exStage_byte_num),
		
		.mem_wreg_i(mem_wreg_o),
		.mem_wdata_i(mem_wdata_o),
		.mem_wd_i(mem_wd_o),

		.exmem_wreg_i(mem_wreg_i),
 	    .exmem_wdata_i(mem_wdata_i),
   		.exmem_wd_i(mem_wd_i),
		.exmem_byte_num(memStage_byte_num),

		.reg1_read_o(reg1_read),
		.reg2_read_o(reg2_read), 	  
		.reg1_addr_o(reg1_addr),
		.reg2_addr_o(reg2_addr), 
	  
		.aluop_o(id_aluop_o),
		.alusel_o(id_alusel_o),
		.reg1_o(id_reg1_o),
		.reg2_o(id_reg2_o),
		.wd_o(id_wd_o),
		.wreg_o(id_wreg_o),
		.imm(id_imm),
		// .func7(id_func7),
		.addi(addi_id),
		.id_stall(stall_id),
		.pc_o(id_pc)


	);

	regfile regfile1(
		.clk (clk_in),
		.rst (rst_i),
		.we	(wb_wreg_i),
		.waddr (wb_wd_i),
		.wdata (wb_wdata_i),
		.re1 (reg1_read),
		.raddr1 (reg1_addr),
		.rdata1 (reg1_data),
		.re2 (reg2_read),
		.raddr2 (reg2_addr),
		.rdata2 (reg2_data)
	);

	id_ex id_ex0(
		.clk(clk_in),
		.rst(rst_i),
		.pc_i(id_pc),
		.stall(stall_ctrl),
		.addi_id(addi_id),

		.br(br),
		
		.id_aluop(id_aluop_o),
		.id_alusel(id_alusel_o),
		.id_reg1(id_reg1_o),
		.id_reg2(id_reg2_o),
		.id_wd(id_wd_o),
		.id_wreg(id_wreg_o),
		.id_imm(id_imm),
		// .id_func7(id_func7),
	
		.ex_aluop(ex_aluop_i),
		.ex_alusel(ex_alusel_i),
		.ex_reg1(ex_reg1_i),
		.ex_reg2(ex_reg2_i),
		.ex_wd(ex_wd_i),
		.ex_wreg(ex_wreg_i),
		.ex_imm(ex_imm),
		// .ex_func7(ex_func7),

		.pc_o(ex_pc),
		.addi_ex(addi_ex)
	);		
	
	ex ex0(
		.rst(rst_i),
		.pc_i(ex_pc),
	
		.aluop_i(ex_aluop_i),
		.alusel_i(ex_alusel_i),
		.reg1_i(ex_reg1_i),
		.reg2_i(ex_reg2_i),
		.wd_i(ex_wd_i),
		.wreg_i(ex_wreg_i),
		.addi(addi_ex),
		
		.imm(ex_imm),
		// .func7(ex_func7),

		.wd_o(ex_wd_o),
		.wreg_o(ex_wreg_o),
		.wdata_o(ex_wdata_o),

		.pc_o(ex_pc_o),

		.br(br),
		.npc(npc),

		.mem_data_addr(exStage_mem_data_addr),
		.mem_rw(exStage_mem_rw),
		.byte_num_o(exStage_byte_num),
		.sign_o(ex_sign)
		
	);

  ex_mem ex_mem0(
		.clk(clk_in),
		.rst(rst_i),
		.pc_i(ex_pc_o),
		.stall(stall_ctrl),

		.ex_wd(ex_wd_o),
		.ex_wreg(ex_wreg_o),
		.ex_wdata(ex_wdata_o),

		.ex_data_addr(exStage_mem_data_addr),
		.ex_rw(exStage_mem_rw),
		.ex_byte_num(exStage_byte_num),
		.ex_sign(ex_sign),

		.mem_wd(mem_wd_i),
		.mem_wreg(mem_wreg_i),
		.mem_wdata(mem_wdata_i),

		.mem_data_addr(memStage_mem_data_addr),
		.mem_rw(memStage_mem_rw),
		.mem_byte_num(memStage_byte_num),
		.mem_sign(mem_sign),

		.pc_o(mem_pc_i)	       	
	);
	
	mem mem0(
		.rst(rst_i),
		.pc_i(mem_pc_i),

		.wd_i(mem_wd_i),
		.wreg_i(mem_wreg_i),
		.wdata_i(mem_wdata_i),
		
		.mem_data_addr(memStage_mem_data_addr),
		.mem_rw(memStage_mem_rw),
		.mem_byte_num(memStage_byte_num),
		.mem_sign(mem_sign),

		.mem_result(mem_result),
		.op_data_ok(op_data_ok),
		.mem_ctrl_state(mem_ctrl_state),
	  
		.wd_back(wd_back),
		.wreg_back(wreg_back),
		.signed_back(signed_back),
		.op_num_back(op_num_back),
		
		.wd_o(mem_wd_o),
		.wreg_o(mem_wreg_o),
		.wdata_o(mem_wdata_o),

		.op_data_o(op_data),
		.op_data_addr(op_data_addr),
		.op_rw(op_rw),
		.op_num(op_num),
		.write_content(write_content),

		.pc_o(mem_pc_o),
		.mem_stall(stall_mem),

		.wd_mem(wd_mem),
		.wreg_mem(wreg_mem),
		.signed_mem(signed_mem)
	);

	mem_wb mem_wb0(
		.clk(clk_in),
		.rst(rst_i),
		.pc_i(mem_pc_o),

		.mem_wd(mem_wd_o),
		.mem_wreg(mem_wreg_o),
		.mem_wdata(mem_wdata_o),
	
		.wb_wd(wb_wd_i),
		.wb_wreg(wb_wreg_i),
		.wb_wdata(wb_wdata_i)
									       	
	);

always @(posedge clk_in)
  begin
    if (rst_i)
      begin
      
      end
    else if (!rdy_in)
      begin
      
      end
    else
      begin
      
      end
  end
  
endmodule