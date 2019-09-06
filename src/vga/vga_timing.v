// File: vga_timing.v
// This is the vga timing design for EE178 Lab #4.

// The `timescale directive specifies what the
// simulation time units are (1 ns here) and what
// the simulator time step should be (1 ps here).

`timescale 1 ns / 1 ps

// Declare the module and its ports. This is
// using Verilog-2001 syntax.

module vga_timing (
  output reg [10:0] vcount,
  output reg vsync,
  output reg vblnk,
  output reg [10:0] hcount,
  output reg hsync,
  output reg hblnk,
  input wire pclk
  );
  // Describe the actual circuit for the assignment.
  // Video timing controller set for 800x600@60fps
  // using a 40 MHz pixel clock per VESA spec.
  localparam ACTIVE = 1'b0;
  localparam BLANK = 1'b1;
  localparam HORIZONTAL_ACTIVE_END = 800;
  localparam VERTICAL_ACTIVE_END = 600;
  localparam HORIZONTAL_END = 1056;
  localparam VERTICAL_END = 628;
  localparam H_FRONT_PORCH = 40;
  localparam H_SYNC = 128;
  localparam H_BACK_PORCH = 88;
  localparam V_FRONT_PORCH = 1;
  localparam V_SYNC = 4;
  localparam V_BACK_PORCH = 23; 
  
  reg [10:0] hcount_next=0, vcount_next=0;
  reg hsync_next=0, vsync_next=0, hblnk_next=0, vblnk_next=0;
  
  always @* // pass signals to the output
  begin    

    hcount <= hcount_next;
    vcount <= vcount_next;
      
    vsync <= vsync_next;
    hsync <= hsync_next;
      
    hblnk <= hblnk_next;
    vblnk <= vblnk_next; 
  end
  
  // maintain counter
  always@(posedge pclk)
  begin
    if(HORIZONTAL_END-1 <= hcount)
    begin
      vcount_next <= (vcount+1)%VERTICAL_END;
      hcount_next <= 0;
    end
    else
    begin
      vcount_next <= vcount;
      hcount_next <= hcount+1;
    end
  end
  
  // maintaining vertical signals
  always@*
  begin
    if(vcount < VERTICAL_ACTIVE_END)
    begin
      vblnk_next = 0;
      vsync_next = 0;
    end
    else begin
      if(vcount >= VERTICAL_ACTIVE_END+V_FRONT_PORCH && vcount <VERTICAL_ACTIVE_END+V_FRONT_PORCH+V_SYNC)
      begin // v sync
        vblnk_next = 1;
        vsync_next = 1;
      end
      else
      begin // v blnk
        vblnk_next = 1;
        vsync_next = 0;
      end
    end
  end
  
  // maintaining horizontal signals
  always@*
  begin
    if(hcount < HORIZONTAL_ACTIVE_END)
    begin
      hsync_next = 0;
      hblnk_next = 0;
    end
    else
    begin
      if(hcount >= VERTICAL_ACTIVE_END+V_FRONT_PORCH && hcount < HORIZONTAL_ACTIVE_END+H_FRONT_PORCH+H_SYNC)
      begin // h sync
        hsync_next = 1;
        hblnk_next = 1;
      end
      else
      begin // v blnk
        hsync_next = 0;
        hblnk_next = 1;
      end   
    end
  end
  
endmodule
