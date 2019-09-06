`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/12/2019 12:29:08 PM
// Design Name: 
// Module Name: draw_rect
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

`define RGB_SIZE    11:0
`define COUNT_SIZE  10:0
`define DRAW_RECT_INPUT wire [`COUNT_SIZE] hcount_in,\
                      wire hsync_in,\
                      wire [`COUNT_SIZE] vcount_in,\
                      wire vsync_in,\
                      wire [11:0]rgb_pixel
                      
`define DRAW_RECT_OUTPUT reg hsync_out,\
                       reg vsync_out,\
                       reg [`RGB_SIZE] rgb_out,\
                       reg [13:0] pixel_addr

`define BLACK  12'h0_0_0
`define WHITE  12'hf_f_f
`define BLUE   12'h2_5_a
`define ORANGE 12'hf_7_0
`define XPOS 0
`define YPOS 0

//module draw_rect(input `DRAW_RECT_INPUT, output `DRAW_RECT_OUTPUT);

//    localparam RECT_WIDTH = 4'h8;
//    localparam RECT_HEIGHT= 4'h8; 
    
//    reg [10:0] y_addr, x_addr;
//    reg [10:0] hcount_b1, vcount_b1;
//    reg [11:0] rgb_b1;
//    reg vsync_b1, hsync_b1, hblnk_b1, vblnk_b1;
    
//    always@*

//endmodule


// BACKUP
//module draw_rect(input `DRAW_RECT_INPUT, output `DRAW_RECT_OUTPUT);

//    localparam RECT_WIDTH = 4'h8;
//    localparam RECT_HEIGHT= 4'h8; 
    
//    reg [10:0] y_addr, x_addr;
//    reg [10:0] hcount_b1, vcount_b1;
//    reg [11:0] rgb_b1;
//    reg vsync_b1, hsync_b1, hblnk_b1, vblnk_b1;
    
//    always@*
//    begin
////      pixel_addr <= {vcount_in - ypos, hcount_in - xpos};
//      hcount_b1 <= hcount_in;
//      vcount_b1 <= vcount_in;
//      hsync_b1 <= hsync_in;
//      vsync_b1 <= vsync_in;
//      hblnk_b1 <= hblnk_in;
//      vblnk_b1 <= vblnk_in;
//      rgb_b1 <= rgb_in;    
//    end

//    always@*
//    begin    
////       check if current hcount_in and vcount_in are within range     
//      if(hcount_b1 > 0 && hcount_b1 <= 799
//         && vcount_b1 >= 0 && vcount_b1 < 599)
//         rgb_out <= rgb_pixel;
//      else
//         rgb_out <= rgb_b1; 
      
//      vsync_out <= vsync_b1;
//      vblnk_out <= vblnk_b1;
//      hsync_out <= hsync_b1;
//      hblnk_out <= hblnk_b1;
//      hcount_out <= hcount_b1;
//      vcount_out <= vcount_b1;
     
//      y_addr = (vcount_in / RECT_HEIGHT);      
//      x_addr = (hcount_in / RECT_WIDTH);
//      // BACKUP
////      y_addr = (vcount_in - `YPOS);
////      x_addr = (hcount_in - `XPOS);
//      // END OF BACKUP
//      pixel_addr <= {y_addr[6:0], x_addr[6:0]};
//    end

//endmodule
