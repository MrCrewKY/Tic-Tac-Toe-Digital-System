module winner_case(p1,p2,s1,s2);//p1=player1, p2=player2, s=result
			input[0:8] p1,p2;//9 position, 0-2 from top left to right, 3-5 from middle left to right, 6-8 from bottom left to right
			output reg s1,s2;
			
			always @(*)
			begin
			
			//start with 00, so winner not decided before the game
			
			casex(p1)//case for player 1
					9'b111xxxxxx: s1 = 1'b1;//rows
					9'bxxx111xxx: s1 = 1'b1;//rows
					9'bxxxxxx111: s1 = 1'b1;//rows
               9'bxx1xx1xx1: s1 = 1'b1;//columns
					9'bx1xx1xx1x: s1 = 1'b1;//columns
					9'b1xx1xx1xx: s1 = 1'b1;//columns
               9'bxx1x1x1xx: s1 = 1'b1;//diagonals
					9'b1xxx1xxx1: s1 = 1'b1;//diagonals
					default: s1 = 1'b0;
			endcase
			
			casex(p2)//case for player 2
					9'b111xxxxxx: s2 = 1'b1;//rows
					9'bxxx111xxx: s2 = 1'b1;//rows
					9'bxxxxxx111: s2 = 1'b1;//rows
               9'bxx1xx1xx1: s2 = 1'b1;//columns
					9'bx1xx1xx1x: s2 = 1'b1;//columns
					9'b1xx1xx1xx: s2 = 1'b1;//columns
               9'bxx1x1x1xx: s2 = 1'b1;//diagonals
					9'b1xxx1xxx1: s2 = 1'b1;//diagonals
					default: s2 = 1'b0;
			endcase
		end
		
endmodule
								
			