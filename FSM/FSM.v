module FSM(clock, restart, reset, invalid, win1, win2, draw, enP1, enP2, LED_invalid);
reg [2:0] now_state,next_state;
input clock, restart, reset, invalid, win1, win2, draw;
output reg enP1, enP2, LED_invalid;
wire clk_out;

parameter invalid_P1 = 3'b000;
parameter invalid_P2 = 3'b001;
parameter Win = 3'b010;
parameter Draw = 3'b011;
parameter Restart_game = 3'b100;

Clk_Div Adjusted_clock (clk_out,clock);

always@(posedge clk_out or negedge reset)
	if (reset == 0) begin
		now_state <= invalid_P1;
	end else 
		now_state <= next_state;

always@ (now_state, invalid, win1, win2, draw, restart)
	case (now_state)
	//INVALID P1
		invalid_P1 : begin 
			if ( (invalid == 1) && (restart == 0) )
				LED_invalid <= 1'b0;
			else if ( (invalid == 1) && (restart == 1) ) begin
				next_state <= invalid_P1;
				LED_invalid <= 1'b1;
			end else begin
				next_state <= invalid_P2;
				LED_invalid <= 1'b0;
			end
		end
		
	//INVALID P2
		invalid_P2 : begin
			if ( (invalid == 1) && (restart == 0) )
				LED_invalid <= 1'b0;
			else if ( (invalid == 1) && (restart == 1) )begin
				next_state <= invalid_P2;
				LED_invalid <= 1'b1;
			end else
				next_state <= Win;
				LED_invalid <= 1'b0;
		end
		
	//Win
		Win: begin
			if (win1 == 1) begin
				next_state <= Restart_game;
				enP1 <= 1'b1;
			end else if (win2 == 1) begin
				next_state <= Restart_game;
				enP2 <= 1'b1;
			end else begin
				next_state <= Draw;
				enP1 <= 1'b0;
				enP2 <= 1'b0;
			end
		end
		
	//DRAW 
		Draw: begin
			if (draw == 1)
				next_state <= Restart_game;
			else
				next_state <= invalid_P1;
		end 
	
	//Restart game 
		Restart_game: begin
			if (restart == 0) begin
				next_state <= invalid_P1;
				enP1 <= 1'b0;
				enP2 <= 1'b0;
			end
			else
				next_state <= Restart_game;
		end
		
		default: next_state <= invalid_P1;
	endcase
		
endmodule