/*
# Team ID:          2237
# Theme:            MazeSolver Bot
# Author List:      Sasi Kiran Pulapakura
# Filename:         frequency_scaling.v
# File Description: This module acts as a frequency divider, scaling a 50 MHz input clock down to 3.125 MHz by dividing it by 16.
# Global variables: None
*/

/*
Module frequency_scaling

This module divides the input clock frequency by 16.

Input:   clk_50M     - 50 MHz input clock
Output:  clk_3125KHz - 3.125 MHz output clock (50 MHz / 16)
*/

module frequency_scaling (
    input clk_50M,
    output reg clk_3125KHz
);

initial begin
    clk_3125KHz = 0;
end
//////////////////DO NOT MAKE ANY CHANGES ABOVE THIS LINE //////////////////

// A counter is needed to count the clock cycles. To divide by 16,
// the counter needs to count up to 8 (0 to 7) before toggling the output.
// A 4-bit register is sufficient since we only need to count to 7.
// counter: A 4-bit register used to count input clock cycles for frequency division.
reg [3:0] counter;

// Initialize the counter to 7 to ensure the first toggle happens correctly after one clock cycle.
initial begin
    counter = 7;
end

// On every positive edge of the 50MHz clock, manage the counter and toggle the output clock.
always @(posedge clk_50M) begin
/*
Purpose:
---
This block implements the frequency division logic. It uses a counter that increments on each input clock cycle. The output clock is toggled every 8 cycles of the input clock, which effectively divides the frequency by 16 (since a full cycle requires two toggles).
*/
    if(counter == 7) begin
        clk_3125KHz <= ~clk_3125KHz; // Toggle the output clock
        counter <= 0;                   // Reset the counter
    end else begin
        counter <= counter + 1;         // Increment the counter
    end
end

//////////////////DO NOT MAKE ANY CHANGES BELOW THIS LINE //////////////////

endmodule