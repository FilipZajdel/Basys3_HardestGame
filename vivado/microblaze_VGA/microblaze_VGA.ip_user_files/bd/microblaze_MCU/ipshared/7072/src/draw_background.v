`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2019 11:36:21 AM
// Design Name: 
// Module Name: draw_background
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

`define COUNT_SIZE  10:0

//`define DRAW_BG_INPUT wire [`COUNT_SIZE] hcount,\
//                      wire hsync_in,\
//                      wire hblnk,\
//                      wire [`COUNT_SIZE] vcount,\
//                      wire vsync_in,\
//                      wire vblnk, \
//                      wire clk,\
//                      wire [13:0] write_addr, \ 
//                      wire [11:0] write_rgb, \
//                      wire write_enable
                      
//`define DRAW_BG_OUTPUT reg hsync_out,\
//                       reg vsync_out,\
//                       reg [3:0] red,\
//                       reg [3:0] green,\
//                       reg [3:0] blue

module draw_background(input wire [`COUNT_SIZE] hcount,
                            wire hsync,
                            wire hblnk,
                            wire [`COUNT_SIZE] vcount,
                            wire vsync,
                            wire vblnk, 
                            wire clk,
                            wire [13:0] write_addr, // [13:7]y, [6:0]x
                            wire [11:0] write_rgb, 
                            wire write_enable,
                      output reg hsync_out,
                            reg vsync_out,
                            reg [3:0] red,
                            reg [3:0] green,
                            reg [3:0] blue);

reg [11:0] vga_memory [0:16383];
reg [6:0] y_addr, x_addr;

always @(posedge clk) begin
  
  vsync_out <= vsync;
  hsync_out <= hsync;  
  
  if(write_enable) begin
    vga_memory[{write_addr[13:7], write_addr[6:0]}] <= write_rgb;    
  end
  
//  vga_memory[{7'h5, 7'h14}] <= 12'hFAF; // it will tell if address is generated badly, or memory is written badly
  
  if(!(vblnk || hblnk))
//    {red, green, blue} <= vga_memory[{7'h5, 7'h14}]; // debug
//    {red, green, blue} <= vga_memory[{vcount/8, hcount/8}];
    {red, green, blue} <= vga_memory[{y_addr, x_addr}];
  else
    {red, green, blue} <= 12'h000;

  end

  always @*
  begin
    x_addr = hcount / 8;
    y_addr = vcount / 8;
  end

endmodule

//module draw_background(input `DRAW_BG_INPUT, output `DRAW_BG_OUTPUT);

//   // F letter constants
//  localparam f_up_line_x_coord_begin = 250;
//  localparam f_up_line_y_coord_begin = 260;
//  localparam f_line_length = 140;
//  localparam f_line_width = 1;
  
//  localparam f_down_line_x_coord_begin = 250;
//  localparam f_down_line_y_coord_begin = 360;

//  localparam f_vert_line_x_coord_begin = 250;
//  localparam f_vert_line_y_coord_begin = 260;
//  localparam f_vert_line_width = 200;
//  localparam f_vert_line_length = 1;

//  // Z letter constants
//  localparam z_up_line_x_coord_begin = 410;
//  localparam z_up_line_y_coord_begin = 260;
//  localparam z_line_length = 100;
//  localparam z_line_width = 1;
//  localparam z_down_line_y_coord_begin = 460;
//  localparam z_down_line_x_coord_begin = 410;
  
////  reg [`RGB_SIZE] rgb_next;
////  reg vsync_next, hsync_next, hblnk_next, vblnk_next;
////  reg [`COUNT_SIZE] hcount_next, vcount_next;
  
  
//  always@*
//  begin
  
//    if(vblnk_in || hblnk_in)
//        rgb_out <= `GRAY;
//    else
//    begin
//      rgb_out <= `WHITE;
////        // draw up line of F
////        if(hcount_in>=f_up_line_x_coord_begin && hcount_in <=(f_up_line_x_coord_begin + f_line_length)
////          && vcount_in <= (f_up_line_y_coord_begin+f_line_width) && vcount_in >= f_up_line_y_coord_begin)
////          rgb_out <= `WHITE;
////        // draw bottom line of F
////        else if(hcount_in>=f_down_line_x_coord_begin && hcount_in <=f_down_line_x_coord_begin + f_line_length
////          && vcount_in <= f_down_line_y_coord_begin+f_line_width && vcount_in >= f_down_line_y_coord_begin)
////          rgb_out <= `WHITE;
////        // draw vertical line of F
////        else if(hcount_in>=f_vert_line_x_coord_begin && hcount_in <=f_vert_line_x_coord_begin + f_vert_line_length
////          && vcount_in <= f_vert_line_y_coord_begin+f_vert_line_width && vcount_in >= f_vert_line_y_coord_begin)
////          rgb_out <= `WHITE;
////        // draw horizontal line of Z
////        else if(hcount_in>=z_up_line_x_coord_begin && hcount_in <=(z_up_line_x_coord_begin + z_line_length)
////          && vcount_in <= (z_up_line_y_coord_begin+z_line_width) && vcount_in >= z_up_line_y_coord_begin)
////          rgb_out <= `WHITE;
////        // dwar horizontal bottom line of Z 
////        else if(hcount_in>=z_down_line_x_coord_begin && hcount_in <=z_down_line_x_coord_begin + z_line_length
////          && vcount_in <= z_down_line_y_coord_begin+z_line_width && vcount_in >= z_down_line_y_coord_begin)
////          rgb_out <= `WHITE;
////        // draw the middle of Z letter
////        else if( (vcount_in == -2*hcount_in + 1280) && vcount_in <z_down_line_y_coord_begin && vcount_in>z_up_line_y_coord_begin)
////          rgb_out <= `WHITE;
////        else if(vcount_in == 599 || vcount_in == 0)
////          rgb_out <= `WHITE;
////        else if(hcount_in == 799 || hcount_in == 0) 
////          rgb_out <= `WHITE;
////        else //fill the screen with blue
////          rgb_out <= `GRAY;
//    end
  
//    vsync_out <= vsync_in;
//    vblnk_out <= vblnk_in;
//    hsync_out <= hsync_in;
//    hblnk_out <= hblnk_in;
//    hcount_out <= hcount_in;
//    vcount_out <= vcount_in;

//    end

//endmodule
