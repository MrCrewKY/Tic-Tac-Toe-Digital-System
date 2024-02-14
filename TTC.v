module TTC(LED1, LED2, decoout1, decoout2, LED_invalid, p1, p2, restart, reset, clock);
input [0:8] p1, p2;
input restart, reset, clock;
output [0:8] LED1, LED2; 
output [0:6] decoout1, decoout2;
output LED_invalid;
wire win_out1, win_out2, inval_out, draw_out, enP1, enP2;

datapath DataP (LED1, LED2, decoout1, decoout2, win_out1, win_out2, inval_out, draw_out, p1, p2, enP1, enP2, reset, restart);
FSM SMachine (clock, restart, reset, inval_out, win_out1, win_out2, draw_out, enP1, enP2, LED_invalid);
 
endmodule