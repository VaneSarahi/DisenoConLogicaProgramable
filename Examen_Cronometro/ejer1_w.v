module ejer1_w(
    input MAX10_CLK1_50,
    input [1:0] KEY, 
    input [0:0] SW, 
    output [0:6] HEX0,
    output [0:6] HEX1, 
    output [0:6] HEX2, 
    output [0:6] HEX3, 
    output [0:6] HEX4
);

ejer1 WRAP(
    .clk(MAX10_CLK1_50), 
    .start(SW[0]), 
    .stop(~KEY[0]), 
    .rst(~KEY[1]),
    .HEX0(HEX0),
    .HEX1(HEX1), 
    .HEX2(HEX2), 
    .HEX3(HEX3), 
    .HEX4(HEX4)
);


endmodule 