// This is the ROM for the 'AGH48x64.png' image.
// The image size is 48 x 64 pixels.
// The input 'address' is a 12-bit number, composed of the concatenated
// 6-bit y and 6-bit x pixel coordinates.
// The output 'rgb' is 12-bit number with concatenated
// red, green and blue color values (4-bit each)
//BACKUP
//module image_rom (
//    input wire clk ,
//    input wire [11:0] address,  // address = {addry[5:0], addrx[5:0]}
//    input wire [23:0] write_reg,
//    output reg [11:0] rgb
//);

//reg [11:0] rom [0:2047];

//// initial $readmemh("../../image_rom.data", rom); 

//always @(posedge clk)
//    rgb <= rom[address];

//always @*
//    rom[write_reg[23:12]] = write_reg[11:0];

//endmodule
// END OF BACKUP

// backup 2
//module image_rom (
//    input wire clk ,
//    input wire [11:0] address,  // address = {addry[5:0], addrx[5:0]}
//    input wire [23:0] write_reg,
//    input wire write_en,
//    output reg [11:0] rgb
//);

//reg [11:0] ram [0:8191];
//reg [11:0] rgb_next;
//reg [11:0] rom_cell_next;
//reg [11:0] rom_addr_next;


//// initial $readmemh("../../image_rom.data", rom); 

//always @(posedge clk) 
//begin
//  if(write_en) begin
//    ram[write_reg[23:12]] <= write_reg[11:0];
//  end
  
//    rgb <= ram[address];
//end

//endmodule

module image_rom (
    input wire clk ,
    input wire [13:0] address,  // address = {addry[13:7], addrx[6:0]}
    input wire [25:0] write_reg, // address -> {addry[25:19] addrx[18:12]} rgb -> [11:0]
    input wire write_en,
    output reg [11:0] rgb,
    output reg led  // for debug purposes
);

reg [11:0] ram [0:16383];

always @(posedge clk) 
begin
  if(write_en == 1'b1) begin
    ram[{write_reg[25:19], write_reg[18:12]}] <= write_reg[11:0];
  end 

  rgb <= ram[address];
  
end
endmodule