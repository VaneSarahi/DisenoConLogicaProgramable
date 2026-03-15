module clk_divider #(parameter FREQ=10_000_000)(
    input clk,
    input rst,
    output reg clk_div 
);
    reg [31:0] count;
    parameter CLK_FREQ=50_000_000;
    parameter constantNumber= (CLK_FREQ/(2*FREQ));
    always @(posedge clk or posedge rst)
        begin
            if (rst==1)
                begin
                count <= 32'b0; 
                end
            else if (count == constantNumber - 1)
                begin
                count <= 32'b0;
                end
            
            else
                begin
                count<= count +1;
                end
        end 

    always @(posedge clk or posedge rst) //Botones tienen lógica negativa es necesario usar negedge 
        begin
            if (rst==1)
                clk_div <= 0; 
            else if (count == constantNumber - 1)
                clk_div <= ~clk_div;
            
            else
                clk_div <= clk_div;
        end  
endmodule 