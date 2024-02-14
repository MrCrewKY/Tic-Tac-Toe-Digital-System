module datapath (LED1, LED2, decoout1, decoout2, win_out1, win_out2, inval_out, draw_out, p1, p2, en1, en2, reset, restart);
input [0:8] p1, p2;
input en1, en2, reset, restart;
output [0:8] LED1, LED2;
output [0:6] decoout1, decoout2;
output inval_out, draw_out, win_out1, win_out2;
wire [1:0] counter_out1, counter_out2;

invalid_check invalchecker (p1, p2, inval_out);
winner_case win (p1, p2, win_out1, win_out2);
Draw drawcheck (draw_out, p1, p2);
Score_Counter SCount1 (counter_out1, en1, reset);
Score_Counter SCount2 (counter_out2, en2, reset);
decoder2to7 dec27_1 (decoout1, counter_out1);
decoder2to7 dec27_2 (decoout2, counter_out2);
LED_Disp LED_OP (p1, p2, restart, LED1, LED2);

endmodule