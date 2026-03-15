module clk_divider_tb();
    reg clk_tb; 
    reg rst_tb;
    wire clk_div_tb;

    clk_divider DUT (
        .clk(clk_tb),
        .rst(rst_tb),
        .clk_div(clk_div_tb)
    );

    initial 
        begin 
            clk_tb = 0; 
            forever #5 //durante todo el tiempo de simulación se ejecute el código 
            clk_tb = ~clk_tb; 
        end 


    initial 
        begin 
            rst_tb = 1; 
            #100 
            rst_tb = 0; 
            #200000;
            $finish;
        end

    initial 
        begin 
            $monitor("clk_tb=%b, rst_tb=%b, clk_div_tb=%b", clk_tb, rst_tb, clk_div_tb);
        end 
 
    initial 
        begin
        $dumpfile("clk_divider.vcd");
        $dumpvars(0, clk_divider_tb);
        end

    
//rst al switch 0
//output clk_div al led 
//clk al max10...
endmodule 