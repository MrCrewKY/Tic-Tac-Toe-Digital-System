module decoder2to7 (d0,m);//d0=display, m=input
input[1:0] m;
output reg[0:6] d0;

   always @ *
	
		case (m)
			2'b00: d0=7'b0000001;//0
			2'b01: d0=7'b1001111;//1
			2'b10: d0=7'b0010010;//2
			2'b11: d0=7'b0000110;//3
		endcase

endmodule
