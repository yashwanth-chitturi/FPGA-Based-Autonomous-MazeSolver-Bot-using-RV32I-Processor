/*
# Team ID:          2237
# Theme:            MazeSolver Bot
# Author List:      Sasi Kiran Pulapakura
# Filename:         pwm_generator.v
# File Description: This module generates a Pulse Width Modulated (PWM) signal based on a 4-bit duty cycle input. It also generates a 195 KHz clock by dividing the 3.125 MHz input clock.
# Global variables: None
*/

/*
Module pwm_generator

This module generates a PWM signal and a scaled clock.

Input:   clk_3125KHz - 3.125 MHz input clock
         duty_cycle  - 4-bit value to control the PWM signal's duty cycle

Output:  clk_195KHz  - 195 KHz output clock (input clock / 16)
         pwm_signal  - The generated PWM output signal
*/

module pwm_generator(
    input clk_3125KHz,
    input [3:0] duty_cycle,
    output reg clk_195KHz, pwm_signal
);

initial begin
    clk_195KHz = 0; pwm_signal = 1;
end
//////////////////DO NOT MAKE ANY CHANGES ABOVE THIS LINE //////////////////

// counter_clk: A 4-bit counter used to divide the input clock by 16 for 195 KHz clock generation.
reg [3:0] counter_clk;
// pwm_counter: A 4-bit counter that cycles from 0-15 to define the PWM period.
reg [3:0] pwm_counter;

// Initialize counters for simulation
initial begin
    counter_clk = 7;
    pwm_counter = 0;
end

// This block executes on every rising edge of the 3.125MHz clock
always @(posedge clk_3125KHz) begin
/*
Purpose:
---
This block handles two concurrent tasks on each rising edge of the input clock:
1. It divides the input clock by 16 to generate a 195 KHz clock.
2. It generates a PWM signal where the high-time is determined by the 'duty_cycle' input.
*/
    
    // Logic for 195KHz clock generation
    // Toggles the output clock every 8 cycles of the input clock to create a full period of 16 cycles.
    if (counter_clk == 7) begin
        clk_195KHz <= ~clk_195KHz;
        counter_clk <= 0;
    end else begin
        counter_clk <= counter_clk + 1;
    end
    
    // Logic for PWM signal generation
    // The PWM period consists of 16 cycles of the 3.125MHz clock.
    // The PWM counter increments from 0 to 15 to track the position within the period.
    if (pwm_counter == 15) begin
        pwm_counter <= 0;
    end else begin
        pwm_counter <= pwm_counter + 1;
    end

    // Compare the PWM counter to the duty_cycle input
    // The PWM signal is held high as long as the counter's value is less than the duty cycle value.
    if (pwm_counter < duty_cycle) begin
        pwm_signal <= 1;
    end else begin
        pwm_signal <= 0;
    end
    
end

//////////////////DO NOT MAKE ANY CHANGES BELOW THIS LINE //////////////////

endmodule