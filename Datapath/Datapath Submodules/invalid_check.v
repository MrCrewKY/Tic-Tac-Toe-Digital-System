module invalid_check(p1,p2,s);
	input [0:8] p1,p2;
	output reg s;

	always @* begin
			if(p1[0]==1'b1 && p2[0]==1'b1) s = 1'b1; //invalid input in position [0]
			else if(p1[1]==1'b1 && p2[1]==1'b1) s = 1'b1; //invalid input in position [1]
			else if(p1[2]==1'b1 && p2[2]==1'b1) s = 1'b1; //invalid input in position [2]
			else if(p1[3]==1'b1 && p2[3]==1'b1) s = 1'b1; //invalid input in position [3]
			else if(p1[4]==1'b1 && p2[4]==1'b1) s = 1'b1; //invalid input in position [4]
			else if(p1[5]==1'b1 && p2[5]==1'b1) s = 1'b1; //invalid input in position [5]
			else if(p1[6]==1'b1 && p2[6]==1'b1) s = 1'b1; //invalid input in position [6]
			else if(p1[7]==1'b1 && p2[7]==1'b1) s = 1'b1; //invalid input in position [7]
			else if(p1[8]==1'b1 && p2[8]==1'b1) s = 1'b1; //invalid input in position [8]
			else s = 1'b0; //for p1[x] != p2[x] & p1[x]=0 and p2[x]=0
	end

endmodule
