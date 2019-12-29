`define Enable 1'b1
`define Disable 1'b0
`define ZeroWord 32'h00000000
`define AluOpBus 6:0
`define AluSelBus 2:0
`define Valid 1'b0
`define Invalid 1'b1
`define True 1'b1
`define False 1'b0
`define Stop 1'b1
`define NoStop 1'b0

`define EXE_ORI 6'b001101
`define EXE_NOP 6'b000000

//Opcode
`define OP_ORI             7'b0010011 
`define OP_LOAD            7'b0000011
`define OP_STORE           7'b0100011
`define OP_ADD             7'b0110011 
`define OP_LUI             7'b0110111
`define OP_AUIPC           7'b0010111
`define OP_JAL             7'b1101111 
`define OP_JALR            7'b1100111 
`define OP_BRANCH          7'b1100011 
`define OP_NOP             7'b0000000

//AluSel
`define EXE_RES_LOGIC 3'b001
`define EXE_RES_NOP 3'b000

`define InstAddrBus 31:0    //ROM address width
`define AddrBus 31:0
`define DataBus 31:0
`define InstBus 31:0        //ROM data width
`define InstFetchBus 7:0
`define InstMemNum 131071
`define InstMemNumLog2 17

`define RegAddrBus 4:0
`define RegBus 31:0
`define RegWidth 32
`define DoubleRegWidth 64
`define DoubleRegBus 63:0
`define RegNum 32
`define RegNumLog2 5
`define NOPRegAddr 5'b00000

`define WAITING 2'b00
`define READING 2'b01
`define WRITING 2'b10
`define IF 1'b0
`define MEM 1'b1

`define MemRead 1'b1
`define MemWrite 1'b0