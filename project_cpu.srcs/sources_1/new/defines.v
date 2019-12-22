`define Enable 1'b1
`define Disable 1'b0
`define ZeroWord 32'h00000000
`define AluOpBus 7:0
`define AluSelBus 2:0
`define Valid 1'b0
`define Invalid 1'b1
`define True 1'b1
`define False 1'b0
`define Stop 1'b1
`define NoStop 1'b0

`define EXE_ORI 6'b001101
`define EXE_NOP 6'b000000

//AluOp
`define EXE_OR_OP 8'b00100101
`define EXE_NOP_OP 8'b00000000

//AluSel
`define EXE_RES_LOGIC 3'b001
`define EXE_RES_NOP 3'b000

`define InstAddrBus 31:0    //ROM address width
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
