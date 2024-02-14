module Score_Counter (score,en,reset);
input en, reset;
output reg [1:0] score;

always@(negedge reset or posedge en)

	if (reset==0)
		score <= 2'b00;
	else if (en==1)
		score <= score + 2'b01;

endmodule
