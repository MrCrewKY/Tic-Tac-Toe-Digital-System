// Code your testbench here
// or browse Examples
module ttc_tb();
reg clock,restart,reset;
reg [0:8] p1,p2; 
wire [0:8] LED1,LED2;
wire [0:6] decoout1, decoout2;
wire LED_invalid;
  
  //stim gen
  initial
    begin
      clock=0;
      reset=0;
      restart=0;
      p1=0;
      p2=0;
      #10 reset=1;
      #10 restart=1;
      #20 p1[4]=1;
      #20 p2[7]=1;
      #20 p1[5]=1;
      #20 p2[3]=1;
      #20 p1[8]=1;
      #20 p2[4]=1;
      #20 p2[4]=0;
      #20 p2[2]=1;
      #20 p1[0]=1;
      #20 restart=0;
      #20 reset=0;
      #40 $finish;
    end
  
  //clock
  always
    #10 clock = ~clock;
  
  //O/P monitor
  initial
    $monitor("time %d : reset = %b restart = %b clock = %b : p1 = %b, p2 = %b : LED_invalid = %b, LED1 = %b, LED2 = %b, decoout1 = %b, decout2 = %b", $time,reset,restart,clock,p1,p2,LED_invalid,LED1,LED2,decoout1,decoout2);
  
  //instantiate module
  TTC game(LED1, LED2, decoout1, decoout2, LED_invalid, p1, p2, restart, reset, clock);
  
endmodule
