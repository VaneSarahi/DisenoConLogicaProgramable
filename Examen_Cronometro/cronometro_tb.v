module cronometro_tb;

reg clk;
reg start;
reg stop;
reg rst;

wire [9:0] milisegundos;
wire [9:0] segundos;

wire [6:0] HEX0;
wire [6:0] HEX1;
wire [6:0] HEX2;
wire [6:0] HEX3;
wire [6:0] HEX4;


ejer1 DUT(
    .clk(clk),
    .start(start),
    .stop(stop),
    .rst(rst),
    .milisegundos(milisegundos),
    .segundos(segundos),
    .HEX0(HEX0),
    .HEX1(HEX1),
    .HEX2(HEX2),
    .HEX3(HEX3),
    .HEX4(HEX4)
);

always #10 clk = ~clk;   

initial begin
    //inicializar los valores en 0 y el rst en 1
    clk = 0;
    start = 0;
    stop = 0;
    rst = 1;
    
    //probar todos los casos posibles para demostrar el funcionamiento correcto de cada una de las entradas, ya sean SW o KEYS
    #50;
    rst = 0;

    #50;
    start = 1;

    #50000;

    stop = 1;

    #2000;

    stop = 0;

    #20000;

    rst = 1;

    #50;
    rst = 0;

    #10000;

    $stop;

end

endmodule