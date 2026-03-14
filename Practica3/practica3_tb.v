module practica3_tb();
    reg clk;
    reg rst;
    wire clk_div;

    practica3 DUT(
        .clk(clk),
        .rst(rst),
        .clk_div(clk_div)
    );

    initial 
        begin 
            clk=0;
            forever 
            #10;
            clk=~clk;
        end 
    
    initial 
        $display("Simualción iniciada");
        rst=0;
        #1000;
        rst=1;
        #1000;
        $stop;
        $finish;
endmodule 