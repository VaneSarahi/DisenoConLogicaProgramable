module practica3_top_w (
    input MAX10_CLK1_50,
    input [9:0] SW, 
    output [0:6] HEX0, 
    output [0:6] HEX1,
    output [0:6] HEX2  
);

practica3_top WRAP (
    .clk(MAX10_CLK1_50),
    .rst(~KEY[0]),
    .load(~KEY[1]),
    .up_down(SW[0]),
    .data_in(SW[7:1]),
    .HEX0(HEX0),
    .HEX1(HEX1),
    .HEX2(HEX2)
);

endmodule 