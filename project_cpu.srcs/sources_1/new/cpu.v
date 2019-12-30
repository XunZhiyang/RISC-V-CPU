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
  
	pc_reg pc_reg0(
		.clk(clk_in),
		.rst(rst_in),
		.stall(stall_ctrl),
		.pc(pc)
		// .wr(mem_wr)	
	);
	

	iFetch iFetch0(
		.rst(rst_in),
		.pc(pc),
		.read_inst_ok(read_inst_ok),
		.read_inst_data(mem_result),
		.stall(stall_if),
		.read_inst_addr(read_inst_addr),
		.inst_o(inst),
		.reading(read_inst)
	);

	ctrl ctrl0(
		.rst(rst_in),
		.stallreq_from_if(stall_if),
		.stallreq_from_id(`Disable),
		.stallreq_from_ex(`Disable),
		.stall(stall_ctrl)
	);

	mem_ctrl mem_ctrl0(
		.clk(clk_in),
		.rst(rst_in),
		.read_inst_i(read_inst),
		.read_inst_addr(read_inst_addr),
		.op_data_i(op_data),
		.op_data_addr(op_data_addr),
		.op_rw(op_rw),
		.op_num(op_num),
		.write_content(write_content),
		.mem_return(mem_din),
		.read_inst_ok(read_inst_ok),
		.op_data_ok(op_data_ok),
		.ram_rw(mem_wr),
		.address_o(mem_a),
		.write_ram_o(mem_dout),
		.result_o(mem_result)

	);

	if_id if_id0(
		.clk(clk_in),
		.rst(rst_in),
		.if_pc(pc),
		.if_inst(inst),
		.id_pc(id_pc_i),
		.id_inst(id_inst_i)      	
	);
	
	id id0(
		.rst(rst_in),
		.pc_i(id_pc_i),
		.inst_i(id_inst_i),

		.reg1_data_i(reg1_data),
		.reg2_data_i(reg2_data),

		.ex_wreg_i(ex_wreg_o),
		.ex_wdata_i(ex_wdata_o),
		.ex_wd_i(ex_wd_o),
		
		.mem_wreg_i(mem_wreg_o),
		.mem_wdata_i(mem_wdata_o),
		.mem_wd_i(mem_wd_o),

		.reg1_read_o(reg1_read),
		.reg2_read_o(reg2_read), 	  

		.reg1_addr_o(reg1_addr),
		.reg2_addr_o(reg2_addr), 
	  
		.aluop_o(id_aluop_o),
		.alusel_o(id_alusel_o),
		.reg1_o(id_reg1_o),
		.reg2_o(id_reg2_o),
		.wd_o(id_wd_o),
		.wreg_o(id_wreg_o)

	);

	regfile regfile1(
		.clk (clk_in),
		.rst (rst_in),
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
		.rst(rst_in),
		
		.id_aluop(id_aluop_o),
		.id_alusel(id_alusel_o),
		.id_reg1(id_reg1_o),
		.id_reg2(id_reg2_o),
		.id_wd(id_wd_o),
		.id_wreg(id_wreg_o),
	
		.ex_aluop(ex_aluop_i),
		.ex_alusel(ex_alusel_i),
		.ex_reg1(ex_reg1_i),
		.ex_reg2(ex_reg2_i),
		.ex_wd(ex_wd_i),
		.ex_wreg(ex_wreg_i)
	);		
	
	ex ex0(
		.rst(rst_in),
	
		.aluop_i(ex_aluop_i),
		.alusel_i(ex_alusel_i),
		.reg1_i(ex_reg1_i),
		.reg2_i(ex_reg2_i),
		.wd_i(ex_wd_i),
		.wreg_i(ex_wreg_i),
	  
		.wd_o(ex_wd_o),
		.wreg_o(ex_wreg_o),
		.wdata_o(ex_wdata_o)
		
	);

  ex_mem ex_mem0(
		.clk(clk_in),
		.rst(rst_in),

		.ex_wd(ex_wd_o),
		.ex_wreg(ex_wreg_o),
		.ex_wdata(ex_wdata_o),
	

		.mem_wd(mem_wd_i),
		.mem_wreg(mem_wreg_i),
		.mem_wdata(mem_wdata_i)

						       	
	);
	
	mem mem0(
		.rst(rst_in),
	
		.wd_i(mem_wd_i),
		.wreg_i(mem_wreg_i),
		.wdata_i(mem_wdata_i),
		.mem_result(mem_result),
	  
		.wd_o(mem_wd_o),
		.wreg_o(mem_wreg_o),
		.wdata_o(mem_wdata_o),

		.op_data_o(op_data),
		.op_data_addr(op_data_addr),

		.op_rw(op_rw),
		.op_num(op_num),
		.write_content(write_content)
	);

	mem_wb mem_wb0(
		.clk(clk_in),
		.rst(rst_in),

		.mem_wd(mem_wd_o),
		.mem_wreg(mem_wreg_o),
		.mem_wdata(mem_wdata_o),
	
		.wb_wd(wb_wd_i),
		.wb_wreg(wb_wreg_i),
		.wb_wdata(wb_wdata_i)
									       	
	);

always @(posedge clk_in)
  begin
    if (rst_in)
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