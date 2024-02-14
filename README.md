# Tic-Tac-Toe-Microprocessor
Here lies the full documentation of my Tic Tac Toe Microprocessor project coded in Verilog.

This is my final project for Digital Systems Design class. 

A simple black box was first designed for this microcontroller with all its inputs and outputs listed. 
Next, a flowchart was drafted to systematically integrate all its functions. The datapath was then fabricated by Verilog coding. 
To create the finite state machine (FSM), a next state diagram was drafted and optimised to identify the shortest way to allow the system to function automatically. 
The FSM state tables were then drafted & encoded. Then the Verilog coding is written and integrated with the datapath to create the game microprocessor.
The hardware peripherals were then added by downloading the Verilog modules into an Altera FPGA and plugging a 3x6 red & green LED matrix to the FPGA.
The microprocessor was tested for its functionality by writing a testbench. 
After that, timing analysis on the FSM is conducted to determine the fastest clock frequency for the FSM and ensure no hold time violation.
