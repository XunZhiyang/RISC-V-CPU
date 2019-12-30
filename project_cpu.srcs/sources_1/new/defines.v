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

// `define EXE_ORI 6'b001101
// `define EXE_NOP 6'b000000

//Opcode
`define OP_ORI             7'b0010011 
`define OP_LOAD            7'b0000011
`define OP_STORE           7'b0100011
`define OP_ADD             7'b0110011 
`define OP_LUI             7'b0110111
`define OP_AUIPC           7'b0010111
`define OP_BRANCH          7'b1100011 
`define OP_JAL             7'b1101111 
`define OP_JALR            7'b1100111 
`define OP_NOP             7'b0000000

`define SEL_ADD             5'b00000
`define SEL_SUB             5'b00000
`define SEL_SLL             5'b00001
`define SEL_SLT             5'b00010
`define SEL_SLTU            5'b00011
`define SEL_XOR             5'b00100
`define SEL_SRL             5'b00101
`define SEL_SRA             5'b00101
`define SEL_OR              5'b00110
`define SEL_AND             5'b00111

`define SEL_LUI             5'b01100
`define SEL_AUIPC           5'b01001
`define SEL_JAL             5'b01010
`define SEL_JALR            5'b01011

`define SEL_BEQ             5'b10000
`define SEL_BNE             5'b10001
`define SEL_BLT             5'b10100
`define SEL_BGE             5'b10101
`define SEL_BLTU            5'b10110
`define SEL_BGEU            5'b10111

`define SEL_LB              5'b11000
`define SEL_LH              5'b11001
`define SEL_LW              5'b11010
`define SEL_LBU             5'b11100
`define SEL_LHU             5'b11101
`define SEL_SB              5'b11111
`define SEL_SH              5'b11110
`define SEL_SW              5'b11011

//AluSel
`define EXE_RES_LOGIC 3'b001
`define EXE_RES_NOP 3'b000

`define InstAddrBus 31:0    //ROM address width
`define AddrBus 31:0
`define DataBus 31:0
`define CtrlBus 5:0
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

`define MemRead 1'b0
`define MemWrite 1'b1