
v
Command: %s
53*	vivadotcl2E
1synth_design -top riscv_top -part xc7a35tcpg236-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px� 
�
%s*synth2�
xStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 711.625 ; gain = 176.832
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2
	riscv_top2default:default2
 2default:default2V
@D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/riscv_top.v2default:default2
42default:default8@Z8-6157h px� 
X
%s
*synth2@
,	Parameter SIM bound to: 0 - type: integer 
2default:defaulth p
x
� 
i
%s
*synth2Q
=	Parameter SYS_CLK_FREQ bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter UART_BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter RAM_ADDR_WIDTH bound to: 17 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
	clk_wiz_02default:default2
 2default:default2
iD:/CA/CPU/project_cpu/project_cpu.runs/synth_1/.Xil/Vivado-1440-LAPTOP-DP9ILB3A/realtime/clk_wiz_0_stub.v2default:default2
52default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	clk_wiz_02default:default2
 2default:default2
12default:default2
12default:default2
iD:/CA/CPU/project_cpu/project_cpu.runs/synth_1/.Xil/Vivado-1440-LAPTOP-DP9ILB3A/realtime/clk_wiz_0_stub.v2default:default2
52default:default8@Z8-6155h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
clock2default:default2
	clk_wiz_02default:default2
42default:default2
32default:default2V
@D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/riscv_top.v2default:default2
282default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
ram2default:default2
 2default:default2P
:D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/ram.v2default:default2
32default:default8@Z8-6157h px� 
`
%s
*synth2H
4	Parameter ADDR_WIDTH bound to: 17 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2(
single_port_ram_sync2default:default2
 2default:default2c
MD:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/common/block_ram/block_ram.v2default:default2
622default:default8@Z8-6157h px� 
`
%s
*synth2H
4	Parameter ADDR_WIDTH bound to: 17 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter DATA_WIDTH bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
<%s inside initial block, initial block items will be ignored4742*oasys2/
loop limit (65536) exceeded2default:default2c
MD:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/common/block_ram/block_ram.v2default:default2
902default:default8@Z8-6896h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
single_port_ram_sync2default:default2
 2default:default2
22default:default2
12default:default2c
MD:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/common/block_ram/block_ram.v2default:default2
622default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ram2default:default2
 2default:default2
32default:default2
12default:default2P
:D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/ram.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
cpu2default:default2
 2default:default2P
:D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/cpu.v2default:default2
62default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
pc_reg2default:default2
 2default:default2S
=D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/pc_reg.v2default:default2
22default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pc_reg2default:default2
 2default:default2
42default:default2
12default:default2S
=D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/pc_reg.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
iFetch2default:default2
 2default:default2O
9D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/if.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
iFetch2default:default2
 2default:default2
52default:default2
12default:default2O
9D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/if.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ctrl2default:default2
 2default:default2Q
;D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/ctrl.v2default:default2
12default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ctrl2default:default2
 2default:default2
62default:default2
12default:default2Q
;D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/ctrl.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
mem_ctrl2default:default2
 2default:default2U
?D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/mem_ctrl.v2default:default2
22default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2U
?D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/mem_ctrl.v2default:default2
722default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mem_ctrl2default:default2
 2default:default2
72default:default2
12default:default2U
?D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/mem_ctrl.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
if_id2default:default2
 2default:default2R
<D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/if_id.v2default:default2
22default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
if_id2default:default2
 2default:default2
82default:default2
12default:default2R
<D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/if_id.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
id2default:default2
 2default:default2O
9D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/id.v2default:default2
22default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2O
9D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/id.v2default:default2
1052default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
id2default:default2
 2default:default2
92default:default2
12default:default2O
9D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/id.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
regfile2default:default2
 2default:default2T
>D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/regfile.v2default:default2
22default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
regfile2default:default2
 2default:default2
102default:default2
12default:default2T
>D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/regfile.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
id_ex2default:default2
 2default:default2R
<D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/id_ex.v2default:default2
22default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
id_ex2default:default2
 2default:default2
112default:default2
12default:default2R
<D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/id_ex.v2default:default2
22default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ex2default:default2
 2default:default2O
9D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/ex.v2default:default2
32default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ex2default:default2
 2default:default2
122default:default2
12default:default2O
9D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/ex.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ex_mem2default:default2
 2default:default2S
=D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/ex_mem.v2default:default2
32default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ex_mem2default:default2
 2default:default2
132default:default2
12default:default2S
=D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/ex_mem.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
mem2default:default2
 2default:default2P
:D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/mem.v2default:default2
32default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mem2default:default2
 2default:default2
142default:default2
12default:default2P
:D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/mem.v2default:default2
32default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
mem_wb2default:default2
 2default:default2S
=D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/mem_wb.v2default:default2
32default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mem_wb2default:default2
 2default:default2
152default:default2
12default:default2S
=D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/mem_wb.v2default:default2
32default:default8@Z8-6155h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
dbgreg_dout2default:default2
cpu2default:default2P
:D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/cpu.v2default:default2
162default:default8@Z8-3848h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cpu2default:default2
 2default:default2
162default:default2
12default:default2P
:D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/cpu.v2default:default2
62default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
hci2default:default2
 2default:default2P
:D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/hci.v2default:default2
302default:default8@Z8-6157h px� 
i
%s
*synth2Q
=	Parameter SYS_CLK_FREQ bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
d
%s
*synth2L
8	Parameter RAM_ADDR_WIDTH bound to: 17 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter OP_ECHO bound to: 8'b00000000 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter OP_CPU_REG_RD bound to: 8'b00000001 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter OP_CPU_REG_WR bound to: 8'b00000010 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter OP_DBG_BRK bound to: 8'b00000011 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter OP_DBG_RUN bound to: 8'b00000100 
2default:defaulth p
x
� 
W
%s
*synth2?
+	Parameter OP_IO_IN bound to: 8'b00000101 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter OP_QUERY_DBG_BRK bound to: 8'b00000111 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter OP_QUERY_ERR_CODE bound to: 8'b00001000 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter OP_MEM_RD bound to: 8'b00001001 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter OP_MEM_WR bound to: 8'b00001010 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter OP_DISABLE bound to: 8'b00001011 
2default:defaulth p
x
� 
h
%s
*synth2P
<	Parameter DBG_UART_PARITY_ERR bound to: 0 - type: integer 
2default:defaulth p
x
� 
g
%s
*synth2O
;	Parameter DBG_UNKNOWN_OPCODE bound to: 1 - type: integer 
2default:defaulth p
x
� 
V
%s
*synth2>
*	Parameter S_DISABLED bound to: 5'b00000 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter S_DECODE bound to: 5'b00001 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter S_ECHO_STG_0 bound to: 5'b00010 
2default:defaulth p
x
� 
X
%s
*synth2@
,	Parameter S_ECHO_STG_1 bound to: 5'b00011 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter S_IO_IN_STG_0 bound to: 5'b00100 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	Parameter S_IO_IN_STG_1 bound to: 5'b00101 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter S_CPU_REG_RD_STG0 bound to: 5'b00110 
2default:defaulth p
x
� 
]
%s
*synth2E
1	Parameter S_CPU_REG_RD_STG1 bound to: 5'b00111 
2default:defaulth p
x
� 
\
%s
*synth2D
0	Parameter S_QUERY_ERR_CODE bound to: 5'b01000 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter S_MEM_RD_STG_0 bound to: 5'b01001 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter S_MEM_RD_STG_1 bound to: 5'b01010 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter S_MEM_WR_STG_0 bound to: 5'b01011 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	Parameter S_MEM_WR_STG_1 bound to: 5'b01100 
2default:defaulth p
x
� 
U
%s
*synth2=
)	Parameter S_DISABLE bound to: 5'b10000 
2default:defaulth p
x
� 
e
%s
*synth2M
9	Parameter IO_IN_BUF_WIDTH bound to: 10 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2
fifo2default:default2
 2default:default2Y
CD:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/common/fifo/fifo.v2default:default2
272default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter DATA_BITS bound to: 8 - type: integer 
2default:defaulth p
x
� 
_
%s
*synth2G
3	Parameter ADDR_BITS bound to: 10 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
fifo2default:default2
 2default:default2
172default:default2
12default:default2Y
CD:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/common/fifo/fifo.v2default:default2
272default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
uart2default:default2
 2default:default2Y
CD:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/common/uart/uart.v2default:default2
282default:default8@Z8-6157h px� 
i
%s
*synth2Q
=	Parameter SYS_CLK_FREQ bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter DATA_BITS bound to: 8 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter STOP_BITS bound to: 1 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter PARITY_MODE bound to: 1 - type: integer 
2default:defaulth p
x
� 
n
%s
*synth2V
B	Parameter BAUD_CLK_OVERSAMPLE_RATE bound to: 16 - type: integer 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2!
uart_baud_clk2default:default2
 2default:default2b
LD:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/common/uart/uart_baud_clk.v2default:default2
292default:default8@Z8-6157h px� 
i
%s
*synth2Q
=	Parameter SYS_CLK_FREQ bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter BAUD bound to: 115200 - type: integer 
2default:defaulth p
x
� 
n
%s
*synth2V
B	Parameter BAUD_CLK_OVERSAMPLE_RATE bound to: 16 - type: integer 
2default:defaulth p
x
� 
p
%s
*synth2X
D	Parameter CLKS_PER_OVERSAMPLE_TICK bound to: 16'b0000000000110110 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
uart_baud_clk2default:default2
 2default:default2
182default:default2
12default:default2b
LD:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/common/uart/uart_baud_clk.v2default:default2
292default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
uart_rx2default:default2
 2default:default2\
FD:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/common/uart/uart_rx.v2default:default2
282default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter DATA_BITS bound to: 8 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter STOP_BITS bound to: 1 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter PARITY_MODE bound to: 1 - type: integer 
2default:defaulth p
x
� 
n
%s
*synth2V
B	Parameter BAUD_CLK_OVERSAMPLE_RATE bound to: 16 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter STOP_OVERSAMPLE_TICKS bound to: 6'b010000 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter S_IDLE bound to: 5'b00001 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter S_START bound to: 5'b00010 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter S_DATA bound to: 5'b00100 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter S_PARITY bound to: 5'b01000 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter S_STOP bound to: 5'b10000 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2\
FD:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/common/uart/uart_rx.v2default:default2
1012default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_rx2default:default2
 2default:default2
192default:default2
12default:default2\
FD:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/common/uart/uart_rx.v2default:default2
282default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
uart_tx2default:default2
 2default:default2\
FD:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/common/uart/uart_tx.v2default:default2
282default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter DATA_BITS bound to: 8 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter STOP_BITS bound to: 1 - type: integer 
2default:defaulth p
x
� 
`
%s
*synth2H
4	Parameter PARITY_MODE bound to: 1 - type: integer 
2default:defaulth p
x
� 
n
%s
*synth2V
B	Parameter BAUD_CLK_OVERSAMPLE_RATE bound to: 16 - type: integer 
2default:defaulth p
x
� 
b
%s
*synth2J
6	Parameter STOP_OVERSAMPLE_TICKS bound to: 6'b010000 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter S_IDLE bound to: 5'b00001 
2default:defaulth p
x
� 
S
%s
*synth2;
'	Parameter S_START bound to: 5'b00010 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter S_DATA bound to: 5'b00100 
2default:defaulth p
x
� 
T
%s
*synth2<
(	Parameter S_PARITY bound to: 5'b01000 
2default:defaulth p
x
� 
R
%s
*synth2:
&	Parameter S_STOP bound to: 5'b10000 
2default:defaulth p
x
� 
�
-case statement is not full and has no default155*oasys2\
FD:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/common/uart/uart_tx.v2default:default2
1012default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_tx2default:default2
 2default:default2
202default:default2
12default:default2\
FD:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/common/uart/uart_tx.v2default:default2
282default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2(
fifo__parameterized02default:default2
 2default:default2Y
CD:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/common/fifo/fifo.v2default:default2
272default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter DATA_BITS bound to: 8 - type: integer 
2default:defaulth p
x
� 
^
%s
*synth2F
2	Parameter ADDR_BITS bound to: 3 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
fifo__parameterized02default:default2
 2default:default2
202default:default2
12default:default2Y
CD:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/common/fifo/fifo.v2default:default2
272default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart2default:default2
 2default:default2
212default:default2
12default:default2Y
CD:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/common/uart/uart.v2default:default2
282default:default8@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2P
:D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/hci.v2default:default2
2032default:default8@Z8-155h px� 
�
display: %s251*oasys2
	IO:Return2default:default2P
:D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/hci.v2default:default2
2502default:default8@Z8-251h px� 
�
-case statement is not full and has no default155*oasys2P
:D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/hci.v2default:default2
2372default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2P
:D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/hci.v2default:default2
2552default:default8@Z8-155h px� 
�
-case statement is not full and has no default155*oasys2P
:D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/hci.v2default:default2
2702default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
hci2default:default2
 2default:default2
222default:default2
12default:default2P
:D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/hci.v2default:default2
302default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	riscv_top2default:default2
 2default:default2
232default:default2
12default:default2V
@D:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/new/riscv_top.v2default:default2
42default:default8@Z8-6155h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[31]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[30]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[29]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[28]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[27]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[26]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[25]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[24]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[23]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[22]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[21]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[20]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[19]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[18]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[17]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[16]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[15]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[14]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[13]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[12]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[11]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[10]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[9]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[8]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[7]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[6]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[5]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[4]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[3]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[2]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[1]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
mem_wb2default:default2
pc_i[0]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
ex_mem2default:default2
stall[5]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
ex_mem2default:default2
stall[3]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
ex_mem2default:default2
stall[2]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
ex_mem2default:default2
stall[1]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
ex_mem2default:default2
stall[0]2default:defaultZ8-3331h px� 
{
!design %s has unconnected port %s3331*oasys2
ex2default:default2

aluop_i[6]2default:defaultZ8-3331h px� 
{
!design %s has unconnected port %s3331*oasys2
ex2default:default2

aluop_i[5]2default:defaultZ8-3331h px� 
{
!design %s has unconnected port %s3331*oasys2
ex2default:default2

aluop_i[4]2default:defaultZ8-3331h px� 
{
!design %s has unconnected port %s3331*oasys2
ex2default:default2

aluop_i[3]2default:defaultZ8-3331h px� 
{
!design %s has unconnected port %s3331*oasys2
ex2default:default2

aluop_i[2]2default:defaultZ8-3331h px� 
{
!design %s has unconnected port %s3331*oasys2
ex2default:default2

aluop_i[1]2default:defaultZ8-3331h px� 
{
!design %s has unconnected port %s3331*oasys2
ex2default:default2

aluop_i[0]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
id_ex2default:default2
stall[5]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
id_ex2default:default2
stall[4]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
id_ex2default:default2
stall[1]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
id_ex2default:default2
stall[0]2default:defaultZ8-3331h px� 
y
!design %s has unconnected port %s3331*oasys2
regfile2default:default2
re22default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[31]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[30]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[29]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[28]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[27]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[26]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[25]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[24]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[23]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[22]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[21]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[20]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[19]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[18]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[17]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[16]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[15]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[14]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[13]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[12]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[11]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2%
exmem_wdata_i[10]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2$
exmem_wdata_i[9]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2$
exmem_wdata_i[8]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2$
exmem_wdata_i[7]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2$
exmem_wdata_i[6]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2$
exmem_wdata_i[5]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2$
exmem_wdata_i[4]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2$
exmem_wdata_i[3]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2$
exmem_wdata_i[2]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2$
exmem_wdata_i[1]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
id2default:default2$
exmem_wdata_i[0]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
if_id2default:default2
stall[5]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
if_id2default:default2
stall[4]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
if_id2default:default2
stall[3]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
if_id2default:default2
stall[1]2default:defaultZ8-3331h px� 
|
!design %s has unconnected port %s3331*oasys2
if_id2default:default2
stall[0]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
iFetch2default:default2
pc_stalling2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
pc_reg2default:default2
stall[5]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
pc_reg2default:default2
stall[4]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
pc_reg2default:default2
stall[3]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
pc_reg2default:default2
stall[2]2default:defaultZ8-3331h px� 
}
!design %s has unconnected port %s3331*oasys2
pc_reg2default:default2
stall[1]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[31]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[30]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[29]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[28]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[27]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[26]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[25]2default:defaultZ8-3331h px� 
�
!design %s has unconnected port %s3331*oasys2
cpu2default:default2#
dbgreg_dout[24]2default:defaultZ8-3331h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-33312default:default2
1002default:defaultZ17-14h px� 
�
%s*synth2�
xFinished RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 837.199 ; gain = 302.406
2default:defaulth px� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 837.199 ; gain = 302.406
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 837.199 ; gain = 302.406
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2v
`d:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default2
clock	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2v
`d:/CA/CPU/project_cpu/project_cpu.srcs/sources_1/ip/clk_wiz_0/clk_wiz_0/clk_wiz_0_in_context.xdc2default:default2
clock	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2k
UD:/CA/CPU/project_cpu/project_cpu.srcs/constrs_1/imports/sources_1/Basys-3-Master.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2k
UD:/CA/CPU/project_cpu/project_cpu.srcs/constrs_1/imports/sources_1/Basys-3-Master.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2i
UD:/CA/CPU/project_cpu/project_cpu.srcs/constrs_1/imports/sources_1/Basys-3-Master.xdc2default:default2/
.Xil/riscv_top_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
939.2772default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0102default:default2
939.2772default:default2
0.0002default:defaultZ17-268h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Constraint Validation : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 939.277 ; gain = 404.484
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 939.277 ; gain = 404.484
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 939.277 ; gain = 404.484
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
mem_ctrl2default:defaultZ8-802h px� 
�
TROM size for "%s" is below threshold of ROM address width. It will be mapped to LUTs4039*oasys2
reg1_read_o2default:defaultZ8-5587h px� 
�
TROM size for "%s" is below threshold of ROM address width. It will be mapped to LUTs4039*oasys2
reg2_read_o2default:defaultZ8-5587h px� 
�
TROM size for "%s" is below threshold of ROM address width. It will be mapped to LUTs4039*oasys2
wreg_o2default:defaultZ8-5587h px� 
t
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
addi2default:defaultZ8-5546h px� 
�
TROM size for "%s" is below threshold of ROM address width. It will be mapped to LUTs4039*oasys2
reg1_read_o2default:defaultZ8-5587h px� 
�
TROM size for "%s" is below threshold of ROM address width. It will be mapped to LUTs4039*oasys2
reg2_read_o2default:defaultZ8-5587h px� 
�
TROM size for "%s" is below threshold of ROM address width. It will be mapped to LUTs4039*oasys2
wreg_o2default:defaultZ8-5587h px� 
t
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
addi2default:defaultZ8-5546h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
q_state_reg2default:default2
uart_rx2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
q_state_reg2default:default2
uart_tx2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
q_state_reg2default:default2
hci2default:defaultZ8-802h px� 
w
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
d_state2default:defaultZ8-5546h px� 
z
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2

d_err_code2default:defaultZ8-5546h px� 
y
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
	d_tx_data2default:defaultZ8-5546h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                  iSTATE |                              001 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE1 |                              010 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                 iSTATE0 |                              100 |                               10
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2
mem_ctrl2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
.
%s
*synth2
*
2default:defaulth p
x
� 
�
%s
*synth2s
_                  S_IDLE |                            00001 |                            00001
2default:defaulth p
x
� 
�
%s
*synth2s
_                 S_START |                            00010 |                            00010
2default:defaulth p
x
� 
�
%s
*synth2s
_                  S_DATA |                            00100 |                            00100
2default:defaulth p
x
� 
�
%s
*synth2s
_                S_PARITY |                            01000 |                            01000
2default:defaulth p
x
� 
�
%s
*synth2s
_                  S_STOP |                            10000 |                            10000
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2
q_state_reg2default:default2
uart_rx2default:defaultZ8-3898h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
.
%s
*synth2
*
2default:defaulth p
x
� 
�
%s
*synth2s
_                  S_IDLE |                            00001 |                            00001
2default:defaulth p
x
� 
�
%s
*synth2s
_                 S_START |                            00010 |                            00010
2default:defaulth p
x
� 
�
%s
*synth2s
_                  S_DATA |                            00100 |                            00100
2default:defaulth p
x
� 
�
%s
*synth2s
_                S_PARITY |                            01000 |                            01000
2default:defaulth p
x
� 
�
%s
*synth2s
_                  S_STOP |                            10000 |                            10000
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
6No Re-encoding of one hot register '%s' in module '%s'3445*oasys2
q_state_reg2default:default2
uart_tx2default:defaultZ8-3898h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                S_DECODE |                             0000 |                            00001
2default:defaulth p
x
� 
�
%s
*synth2s
_            S_ECHO_STG_0 |                             0001 |                            00010
2default:defaulth p
x
� 
�
%s
*synth2s
_            S_ECHO_STG_1 |                             0010 |                            00011
2default:defaulth p
x
� 
�
%s
*synth2s
_           S_IO_IN_STG_0 |                             0011 |                            00100
2default:defaulth p
x
� 
�
%s
*synth2s
_           S_IO_IN_STG_1 |                             0100 |                            00101
2default:defaulth p
x
� 
�
%s
*synth2s
_        S_QUERY_ERR_CODE |                             0101 |                            01000
2default:defaulth p
x
� 
�
%s
*synth2s
_          S_MEM_RD_STG_0 |                             0110 |                            01001
2default:defaulth p
x
� 
�
%s
*synth2s
_          S_MEM_RD_STG_1 |                             0111 |                            01010
2default:defaulth p
x
� 
�
%s
*synth2s
_          S_MEM_WR_STG_0 |                             1000 |                            01011
2default:defaulth p
x
� 
�
%s
*synth2s
_          S_MEM_WR_STG_1 |                             1001 |                            01100
2default:defaulth p
x
� 
�
%s
*synth2s
_       S_CPU_REG_RD_STG0 |                             1010 |                            00110
2default:defaulth p
x
� 
�
%s
*synth2s
_       S_CPU_REG_RD_STG1 |                             1011 |                            00111
2default:defaulth p
x
� 
�
%s
*synth2s
_                  iSTATE |                             1100 |                            10000
2default:defaulth p
x
� 
�
%s
*synth2s
_              S_DISABLED |                             1101 |                            00000
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
q_state_reg2default:default2

sequential2default:default2
hci2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 939.277 ; gain = 404.484
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     17 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     10 Bit       Adders := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      3 Bit       Adders := 2     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Wide XORs := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 13    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               17 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 33    
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	            1024K Bit         RAMs := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               8K Bit         RAMs := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	             1024 Bit         RAMs := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit         RAMs := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 51    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     32 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     18 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     17 Bit        Muxes := 10    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     17 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input     17 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input     17 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 17    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 10    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      5 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 7     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  11 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  28 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 41    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 16    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  27 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 13    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  11 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
� 
>
%s
*synth2&
Module riscv_top 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     18 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
I
%s
*synth21
Module single_port_ram_sync 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               17 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	            1024K Bit         RAMs := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
Module ram 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
;
%s
*synth2#
Module pc_reg 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
;
%s
*synth2#
Module iFetch 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 6     
2default:defaulth p
x
� 
9
%s
*synth2!
Module ctrl 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
Module mem_ctrl 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 8     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 8     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     32 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 14    
2default:defaulth p
x
� 
:
%s
*synth2"
Module if_id 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
� 
7
%s
*synth2
Module id 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  10 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
<
%s
*synth2$
Module regfile 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	             1024 Bit         RAMs := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 8     
2default:defaulth p
x
� 
:
%s
*synth2"
Module id_ex 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
7
%s
*synth2
Module ex 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 5     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 13    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  28 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  27 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
;
%s
*synth2#
Module ex_mem 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
� 
8
%s
*synth2 
Module mem 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 15    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 6     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
;
%s
*synth2#
Module mem_wb 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
Module fifo 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input     10 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               10 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               8K Bit         RAMs := 1     
2default:defaulth p
x
� 
B
%s
*synth2*
Module uart_baud_clk 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1     
2default:defaulth p
x
� 
<
%s
*synth2$
Module uart_rx 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Wide XORs := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 6     
2default:defaulth p
x
� 
<
%s
*synth2$
Module uart_tx 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Wide XORs := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                4 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
� 
I
%s
*synth21
Module fifo__parameterized0 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      3 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 2     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
� 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               64 Bit         RAMs := 1     
2default:defaulth p
x
� 
9
%s
*synth2!
Module uart 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
� 
8
%s
*synth2 
Module hci 
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     17 Bit       Adders := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               17 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     17 Bit        Muxes := 10    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input     17 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   5 Input     17 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input     17 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input     16 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 11    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  13 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  11 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 17    
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  11 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	  14 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
� 
�
TROM size for "%s" is below threshold of ROM address width. It will be mapped to LUTs4039*oasys2
reg1_read_o2default:defaultZ8-5587h px� 
�
TROM size for "%s" is below threshold of ROM address width. It will be mapped to LUTs4039*oasys2
reg2_read_o2default:defaultZ8-5587h px� 
�
TROM size for "%s" is below threshold of ROM address width. It will be mapped to LUTs4039*oasys2
wreg_o2default:defaultZ8-5587h px� 
t
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
addi2default:defaultZ8-5546h px� 
�
%s
*synth2�
�RAM Pipeline Warning: Read Address Register Found For RAM ram0/ram_bram/ram_reg. We will not be able to pipeline it. This may degrade performance. 
2default:defaulth p
x
� 
�
%s
*synth2�
�RAM Pipeline Warning: Read Address Register Found For RAM ram0/ram_bram/ram_reg. We will not be able to pipeline it. This may degrade performance. 
2default:defaulth p
x
� 
�
%s
*synth2�
�RAM Pipeline Warning: Read Address Register Found For RAM ram0/ram_bram/ram_reg. We will not be able to pipeline it. This may degrade performance. 
2default:defaulth p
x
� 
�
"merging instance '%s' (%s) to '%s'3436*oasys28
$i_0/ram0/ram_bram/ram_reg_mux_sel__62default:default2
FD2default:default28
$i_0/ram0/ram_bram/ram_reg_mux_sel__52default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys28
$i_0/ram0/ram_bram/ram_reg_mux_sel__52default:default2
FD2default:default28
$i_0/ram0/ram_bram/ram_reg_mux_sel__42default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys28
$i_0/ram0/ram_bram/ram_reg_mux_sel__42default:default2
FD2default:default28
$i_0/ram0/ram_bram/ram_reg_mux_sel__32default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys28
$i_0/ram0/ram_bram/ram_reg_mux_sel__32default:default2
FD2default:default28
$i_0/ram0/ram_bram/ram_reg_mux_sel__22default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys28
$i_0/ram0/ram_bram/ram_reg_mux_sel__22default:default2
FD2default:default28
$i_0/ram0/ram_bram/ram_reg_mux_sel__12default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys28
$i_0/ram0/ram_bram/ram_reg_mux_sel__12default:default2
FD2default:default28
$i_0/ram0/ram_bram/ram_reg_mux_sel__02default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys28
$i_0/ram0/ram_bram/ram_reg_mux_sel__02default:default2
FD2default:default25
!i_0/ram0/ram_bram/ram_reg_mux_sel2default:defaultZ8-3886h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:44 ; elapsed = 00:00:45 . Memory (MB): peak = 984.113 ; gain = 449.320
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
e
%s*synth2M
9
Block RAM: Preliminary Mapping  Report (see note below)
2default:defaulth px� 
�
%s*synth2�
�+----------------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px� 
�
%s*synth2�
�|Module Name           | RTL Object | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth px� 
�
%s*synth2�
�+----------------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth px� 
�
%s*synth2�
�|single_port_ram_sync: | ram_reg    | 128 K x 8(WRITE_FIRST) | W | R |                        |   |   | Port A           | 0      | 32     | 
2default:defaulth px� 
�
%s*synth2�
�+----------------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
2default:defaulth px� 
k
%s*synth2S
?
Distributed RAM: Preliminary Mapping  Report (see note below)
2default:defaulth px� 
�
%s*synth2�
�+--------------+---------------------------------------------+-----------+----------------------+------------------------------+
2default:defaulth px� 
�
%s*synth2�
�|Module Name   | RTL Object                                  | Inference | Size (Depth x Width) | Primitives                   | 
2default:defaulth px� 
�
%s*synth2�
�+--------------+---------------------------------------------+-----------+----------------------+------------------------------+
2default:defaulth px� 
�
%s*synth2�
�|cpu0/regfile1 | regs_reg                                    | Implied   | 32 x 32              | RAM32M x 12                  | 
2default:defaulth px� 
�
%s*synth2�
�|riscv_top     | hci0/io_in_fifo/q_data_array_reg            | Implied   | 1 K x 8              | RAM64X1D x 32  RAM64M x 32   | 
2default:defaulth px� 
�
%s*synth2�
�|riscv_top     | hci0/uart_blk/uart_tx_fifo/q_data_array_reg | Implied   | 1 K x 8              | RAM64X1D x 32  RAM64M x 32   | 
2default:defaulth px� 
�
%s*synth2�
�|riscv_top     | hci0/uart_blk/uart_rx_fifo/q_data_array_reg | Implied   | 8 x 8                | RAM32M x 2                   | 
2default:defaulth px� 
�
%s*synth2�
�+--------------+---------------------------------------------+-----------+----------------------+------------------------------+

2default:defaulth px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys21
i_0/ram0/ram_bram/ram_reg_1_02default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys21
i_0/ram0/ram_bram/ram_reg_1_12default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys21
i_0/ram0/ram_bram/ram_reg_1_22default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys21
i_0/ram0/ram_bram/ram_reg_1_32default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys21
i_0/ram0/ram_bram/ram_reg_1_42default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys21
i_0/ram0/ram_bram/ram_reg_1_52default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys21
i_0/ram0/ram_bram/ram_reg_1_62default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys21
i_0/ram0/ram_bram/ram_reg_1_72default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys21
i_0/ram0/ram_bram/ram_reg_3_02default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys21
i_0/ram0/ram_bram/ram_reg_3_12default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys21
i_0/ram0/ram_bram/ram_reg_3_22default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys21
i_0/ram0/ram_bram/ram_reg_3_32default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys21
i_0/ram0/ram_bram/ram_reg_3_42default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys21
i_0/ram0/ram_bram/ram_reg_3_52default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys21
i_0/ram0/ram_bram/ram_reg_3_62default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys21
i_0/ram0/ram_bram/ram_reg_3_72default:default2
Block2default:defaultZ8-6837h px� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
2Moved timing constraint from pin '%s' to pin '%s'
4028*oasys2"
clock/clk_out12default:default2+
clock/bbstub_clk_out1/O2default:defaultZ8-5578h px� 
�
SMoved %s constraints on hierarchical pins to their respective driving/loading pins
4235*oasys2
12default:defaultZ8-5819h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:51 ; elapsed = 00:00:52 . Memory (MB): peak = 984.113 ; gain = 449.320
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:00:59 ; elapsed = 00:01:00 . Memory (MB): peak = 1046.871 ; gain = 512.078
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
N
%s
*synth26
"
Block RAM: Final Mapping  Report
2default:defaulth p
x
� 
�
%s
*synth2�
�+----------------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name           | RTL Object | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+----------------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|single_port_ram_sync: | ram_reg    | 128 K x 8(WRITE_FIRST) | W | R |                        |   |   | Port A           | 0      | 32     | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+----------------------+------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

2default:defaulth p
x
� 
T
%s
*synth2<
(
Distributed RAM: Final Mapping  Report
2default:defaulth p
x
� 
�
%s
*synth2�
�+--------------+---------------------------------------------+-----------+----------------------+------------------------------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name   | RTL Object                                  | Inference | Size (Depth x Width) | Primitives                   | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+--------------+---------------------------------------------+-----------+----------------------+------------------------------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|cpu0/regfile1 | regs_reg                                    | Implied   | 32 x 32              | RAM32M x 12                  | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|riscv_top     | hci0/io_in_fifo/q_data_array_reg            | Implied   | 1 K x 8              | RAM64X1D x 32  RAM64M x 32   | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|riscv_top     | hci0/uart_blk/uart_tx_fifo/q_data_array_reg | Implied   | 1 K x 8              | RAM64X1D x 32  RAM64M x 32   | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|riscv_top     | hci0/uart_blk/uart_rx_fifo/q_data_array_reg | Implied   | 8 x 8                | RAM32M x 2                   | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+--------------+---------------------------------------------+-----------+----------------------+------------------------------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#hci0/io_in_fifo/q_rd_ptr_reg_rep[5]2default:default2
FDRE2default:default23
hci0/io_in_fifo/q_rd_ptr_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#hci0/io_in_fifo/q_rd_ptr_reg_rep[4]2default:default2
FDRE2default:default23
hci0/io_in_fifo/q_rd_ptr_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#hci0/io_in_fifo/q_rd_ptr_reg_rep[3]2default:default2
FDRE2default:default23
hci0/io_in_fifo/q_rd_ptr_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#hci0/io_in_fifo/q_rd_ptr_reg_rep[2]2default:default2
FDRE2default:default23
hci0/io_in_fifo/q_rd_ptr_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#hci0/io_in_fifo/q_rd_ptr_reg_rep[1]2default:default2
FDRE2default:default23
hci0/io_in_fifo/q_rd_ptr_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#hci0/io_in_fifo/q_rd_ptr_reg_rep[0]2default:default2
FDRE2default:default23
hci0/io_in_fifo/q_rd_ptr_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#hci0/io_in_fifo/q_rd_ptr_reg_rep[6]2default:default2
FDRE2default:default23
hci0/io_in_fifo/q_rd_ptr_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#hci0/io_in_fifo/q_rd_ptr_reg_rep[7]2default:default2
FDRE2default:default23
hci0/io_in_fifo/q_rd_ptr_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#hci0/io_in_fifo/q_rd_ptr_reg_rep[8]2default:default2
FDRE2default:default23
hci0/io_in_fifo/q_rd_ptr_reg[8]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys27
#hci0/io_in_fifo/q_rd_ptr_reg_rep[9]2default:default2
FDRE2default:default23
hci0/io_in_fifo/q_rd_ptr_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg_rep[0]2default:default2
FDRE2default:default2>
*hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg_rep[1]2default:default2
FDRE2default:default2>
*hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg_rep[2]2default:default2
FDRE2default:default2>
*hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg_rep[3]2default:default2
FDRE2default:default2>
*hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg_rep[4]2default:default2
FDRE2default:default2>
*hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg_rep[5]2default:default2
FDRE2default:default2>
*hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg_rep[6]2default:default2
FDRE2default:default2>
*hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg_rep[7]2default:default2
FDRE2default:default2>
*hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg_rep[8]2default:default2
FDRE2default:default2>
*hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg[8]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg_rep[9]2default:default2
FDRE2default:default2>
*hci0/uart_blk/uart_tx_fifo/q_rd_ptr_reg[9]2default:defaultZ8-3886h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2-
ram0/ram_bram/ram_reg_1_02default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2-
ram0/ram_bram/ram_reg_1_12default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2-
ram0/ram_bram/ram_reg_1_22default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2-
ram0/ram_bram/ram_reg_1_32default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2-
ram0/ram_bram/ram_reg_1_42default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2-
ram0/ram_bram/ram_reg_1_52default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2-
ram0/ram_bram/ram_reg_1_62default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2-
ram0/ram_bram/ram_reg_1_72default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2-
ram0/ram_bram/ram_reg_3_02default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2-
ram0/ram_bram/ram_reg_3_12default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2-
ram0/ram_bram/ram_reg_3_22default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2-
ram0/ram_bram/ram_reg_3_32default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2-
ram0/ram_bram/ram_reg_3_42default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2-
ram0/ram_bram/ram_reg_3_52default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2-
ram0/ram_bram/ram_reg_3_62default:default2
Block2default:defaultZ8-6837h px� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the block ram. Providing additional output register may help in improving timing.
4693*oasys2-
ram0/ram_bram/ram_reg_3_72default:default2
Block2default:defaultZ8-6837h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:01:01 ; elapsed = 00:01:02 . Memory (MB): peak = 1084.609 ; gain = 549.816
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
dNet %s is driving %s big block pins (URAM, BRAM and DSP loads). Created %s replicas of its driver. 
4391*oasys2
n_0_92default:default2
642default:default2
72default:defaultZ8-6064h px� 
�
dNet %s is driving %s big block pins (URAM, BRAM and DSP loads). Created %s replicas of its driver. 
4391*oasys2
n_0_21422default:default2
642default:default2
72default:defaultZ8-6064h px� 
�
dNet %s is driving %s big block pins (URAM, BRAM and DSP loads). Created %s replicas of its driver. 
4391*oasys2
n_0_17442default:default2
322default:default2
42default:defaultZ8-6064h px� 
�
dNet %s is driving %s big block pins (URAM, BRAM and DSP loads). Created %s replicas of its driver. 
4391*oasys2
n_0_17452default:default2
322default:default2
42default:defaultZ8-6064h px� 
�
dNet %s is driving %s big block pins (URAM, BRAM and DSP loads). Created %s replicas of its driver. 
4391*oasys2
n_0_17462default:default2
322default:default2
42default:defaultZ8-6064h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:01:03 ; elapsed = 00:01:04 . Memory (MB): peak = 1090.805 ; gain = 556.012
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
� 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:03 ; elapsed = 00:01:04 . Memory (MB): peak = 1090.805 ; gain = 556.012
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:03 ; elapsed = 00:01:04 . Memory (MB): peak = 1090.805 ; gain = 556.012
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:03 ; elapsed = 00:01:04 . Memory (MB): peak = 1090.805 ; gain = 556.012
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:04 ; elapsed = 00:01:04 . Memory (MB): peak = 1090.805 ; gain = 556.012
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:04 ; elapsed = 00:01:04 . Memory (MB): peak = 1090.805 ; gain = 556.012
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|1     |clk_wiz_0     |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
H
%s*synth20
+------+-----------+------+
2default:defaulth px� 
H
%s*synth20
|      |Cell       |Count |
2default:defaulth px� 
H
%s*synth20
+------+-----------+------+
2default:defaulth px� 
H
%s*synth20
|1     |clk_wiz_0  |     1|
2default:defaulth px� 
H
%s*synth20
|2     |CARRY4     |   115|
2default:defaulth px� 
H
%s*synth20
|3     |LUT1       |    22|
2default:defaulth px� 
H
%s*synth20
|4     |LUT2       |   397|
2default:defaulth px� 
H
%s*synth20
|5     |LUT3       |   193|
2default:defaulth px� 
H
%s*synth20
|6     |LUT4       |   317|
2default:defaulth px� 
H
%s*synth20
|7     |LUT5       |   251|
2default:defaulth px� 
H
%s*synth20
|8     |LUT6       |   915|
2default:defaulth px� 
H
%s*synth20
|9     |MUXF7      |    32|
2default:defaulth px� 
H
%s*synth20
|10    |MUXF8      |    16|
2default:defaulth px� 
H
%s*synth20
|11    |RAM32M     |    14|
2default:defaulth px� 
H
%s*synth20
|12    |RAM64M     |    64|
2default:defaulth px� 
H
%s*synth20
|13    |RAM64X1D   |    64|
2default:defaulth px� 
H
%s*synth20
|14    |RAMB36E1   |    16|
2default:defaulth px� 
H
%s*synth20
|15    |RAMB36E1_1 |    16|
2default:defaulth px� 
H
%s*synth20
|16    |FDCE       |    59|
2default:defaulth px� 
H
%s*synth20
|17    |FDPE       |     6|
2default:defaulth px� 
H
%s*synth20
|18    |FDRE       |   613|
2default:defaulth px� 
H
%s*synth20
|19    |FDSE       |     6|
2default:defaulth px� 
H
%s*synth20
|20    |IBUF       |     2|
2default:defaulth px� 
H
%s*synth20
|21    |OBUF       |     2|
2default:defaulth px� 
H
%s*synth20
+------+-----------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
k
%s
*synth2S
?+------+------------------------+---------------------+------+
2default:defaulth p
x
� 
k
%s
*synth2S
?|      |Instance                |Module               |Cells |
2default:defaulth p
x
� 
k
%s
*synth2S
?+------+------------------------+---------------------+------+
2default:defaulth p
x
� 
k
%s
*synth2S
?|1     |top                     |                     |  3122|
2default:defaulth p
x
� 
k
%s
*synth2S
?|2     |  cpu0                  |cpu                  |  2059|
2default:defaulth p
x
� 
k
%s
*synth2S
?|3     |    ex_mem0             |ex_mem               |   117|
2default:defaulth p
x
� 
k
%s
*synth2S
?|4     |    id_ex0              |id_ex                |  1048|
2default:defaulth p
x
� 
k
%s
*synth2S
?|5     |    if_id0              |if_id                |   438|
2default:defaulth p
x
� 
k
%s
*synth2S
?|6     |    mem_ctrl0           |mem_ctrl             |   332|
2default:defaulth p
x
� 
k
%s
*synth2S
?|7     |    mem_wb0             |mem_wb               |    48|
2default:defaulth p
x
� 
k
%s
*synth2S
?|8     |    pc_reg0             |pc_reg               |    64|
2default:defaulth p
x
� 
k
%s
*synth2S
?|9     |    regfile1            |regfile              |    12|
2default:defaulth p
x
� 
k
%s
*synth2S
?|10    |  hci0                  |hci                  |   998|
2default:defaulth p
x
� 
k
%s
*synth2S
?|11    |    io_in_fifo          |fifo                 |   246|
2default:defaulth p
x
� 
k
%s
*synth2S
?|12    |    uart_blk            |uart                 |   543|
2default:defaulth p
x
� 
k
%s
*synth2S
?|13    |      uart_baud_clk_blk |uart_baud_clk        |    42|
2default:defaulth p
x
� 
k
%s
*synth2S
?|14    |      uart_rx_blk       |uart_rx              |    54|
2default:defaulth p
x
� 
k
%s
*synth2S
?|15    |      uart_rx_fifo      |fifo__parameterized0 |   156|
2default:defaulth p
x
� 
k
%s
*synth2S
?|16    |      uart_tx_blk       |uart_tx              |    58|
2default:defaulth p
x
� 
k
%s
*synth2S
?|17    |      uart_tx_fifo      |fifo_0               |   231|
2default:defaulth p
x
� 
k
%s
*synth2S
?|18    |  ram0                  |ram                  |    57|
2default:defaulth p
x
� 
k
%s
*synth2S
?|19    |    ram_bram            |single_port_ram_sync |    57|
2default:defaulth p
x
� 
k
%s
*synth2S
?+------+------------------------+---------------------+------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:04 ; elapsed = 00:01:04 . Memory (MB): peak = 1090.805 ; gain = 556.012
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 78 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:51 ; elapsed = 00:01:02 . Memory (MB): peak = 1090.805 ; gain = 453.934
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:01:04 ; elapsed = 00:01:04 . Memory (MB): peak = 1090.805 ; gain = 556.012
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
3372default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1105.8522default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 142 instances were transformed.
  RAM32M => RAM32M (RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMD32, RAMS32, RAMS32): 14 instances
  RAM64M => RAM64M (RAMD64E, RAMD64E, RAMD64E, RAMD64E): 64 instances
  RAM64X1D => RAM64X1D (RAMD64E, RAMD64E): 64 instances
2default:defaultZ1-111h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1592default:default2
1032default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:102default:default2
00:01:112default:default2
1105.8522default:default2
810.9382default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1105.8522default:default2
0.0002default:defaultZ17-268h px� 
K
"No constraints selected for write.1103*constraintsZ18-5210h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2P
<D:/CA/CPU/project_cpu/project_cpu.runs/synth_1/riscv_top.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2|
hExecuting : report_utilization -file riscv_top_utilization_synth.rpt -pb riscv_top_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Jan  4 16:19:06 20202default:defaultZ17-206h px� 


End Record