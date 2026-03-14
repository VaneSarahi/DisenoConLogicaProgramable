module practica3_top(
    input clk, 
    input rst,
    input up_down, 
    input load, 
    input [6:0] data_in, 
    output [6:0] HEX0, 
    output [6:0] HEX1, 
    output [6:0] HEX2, 
);

wire clk_div;
wire [6:0] count;

practica3 #(.CMAX(100)) CONT(
    .clk(clk_div),
    .rst(rst)
    .up_down(up_down),
    .load(load),
    .data_in(data_in),
    .count(count)
);

clk_divider #(.FREQ(5)) DIV(
    .clk(clk),
    .rst(rst),
    .clk_div(clk_div)
);

BCD MOD(
    .bcd_in(count)
);

BCD_4displays #(.N_in(7)), .N_out(7)  DISP(
    .bcd_in(count), 
    D_un(HEX0),
    D_de(HEX1),
    D_ce(HEX2)
);

endmodule 