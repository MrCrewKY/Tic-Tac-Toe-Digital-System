module LED_Disp (P1, P2, clr, LED1, LED2);
input [0:8] P1, P2;
input clr;
output [0:8] LED1, LED2;

/* LED Position:
[0] [1] [2]
[3] [4] [5]
[6] [7] [8]*/

assign LED1 = (clr == 0) ? 9'b0 : P1;
assign LED2 = (clr == 0) ? 9'b0 : P2;

endmodule
