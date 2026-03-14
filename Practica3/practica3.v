module practica3 #(parameter CMAX=100)(
    input clk,
    input rst,
    //nuevo input (switch) para el control de la cuenta 
    input up_down,
    //nuevo input (switches -> data_in) para ingresar el número deseado
    input [6:0] data_in,
    //nuevo input (botón -> load) para que el conteo empiece a partir del número registrado en data_in
    input load,
    output reg [6:0] count
);
//Agregar un if encapsulando el always para hacer la selección de la forma de la cuenta 
always @(posedge clk or posedge rst)
    begin 
        if (rst)  
            count <=0;
        else if (load)
            count<=data_in;
        else if (up_down)
                begin
                    if (count==CMAX)
                    count <=0;
                    else 
                        count <= count +1;
                end 
        else 
            begin 
                if (count==0)
                    count <=100;
                else 
                    count <= count -1;
            end 
    end
endmodule