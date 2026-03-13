module ejer1(
    input clk,
    input start, //Botón de inicio 
    input stop, //Switch de pausa 
    input rst, //Botón de reset
    output reg [9:0] milisegundos, 
    output reg [9:0] segundos,
    output [6:0] HEX0, 
    output [6:0] HEX1, 
    output [6:0] HEX2, 
    output [6:0] HEX3, 
    output [6:0] HEX4
);

wire clk_div; //cable para el divisor del reloj 

//instancia del clk_divider 

clk_divider #(1000) DUT(
    .clk(clk),
    .rst(rst), 
    .clk_div(clk_div)
);

BCD_4displays #(.N_in(10), .N_out(7)) SEGUNDOS(
    .bcd_in(segundos), 
    .D_un(HEX3),
    .D_de(HEX4)
);

BCD_4displays #(.N_in(10), .N_out(7))  MILISEGUNDOS(
    .bcd_in(milisegundos), 
    .D_un(HEX0),
    .D_de(HEX1),
    .D_ce(HEX2)
);


always @(posedge clk_div or posedge rst)
    begin 
        if (rst)
			  begin 
					milisegundos<=0;
					segundos <=0;
				end
			else if (start && !stop)
				begin
					if(milisegundos==999)
						begin
							milisegundos <=0;
							
							if (segundos== 59)
								segundos <= 0;
							else 
								segundos <= segundos +1;
						end
					else 
						milisegundos <= milisegundos +1;
				end
		end
endmodule 