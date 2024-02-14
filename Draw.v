module Draw (draw,p1,p2);
input [0:8] p1, p2;
output reg draw;

always @(draw) 
	if (
			(p1[0] ^ p2[0]) &
			(p1[1] ^ p2[1]) &
			(p1[2] ^ p2[2]) &
			(p1[3] ^ p2[3]) &
			(p1[4] ^ p2[4]) &
			(p1[5] ^ p2[5]) &
			(p1[6] ^ p2[6]) &
			(p1[7] ^ p2[7]) &
			(p1[8] ^ p2[8]) 
		)
		draw <= 1;
	else
		draw <=0;

endmodule