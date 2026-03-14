module practica1_tb();
    reg [3:0] S;
    wire out;

practica1 DUT(
    .S(S),
    .out(out)
);

initial 
    begin 
        $display("Simulación iniciada");
        S=4'0000;
        #10;
        S=4'0001;
        #10;
        S=4'0010;
        #10;
        S=4'0011;
        #10;
        S=4'0100;
        #10;
        S=4'0101;
        #10;
        S=4'0110;
        #10;
        S=4'0111;
        #10;
        S=4'1000;
        #10;
        S=4'1001;
        #10;
        S=4'1010;
        #10;
        S=4'1011;
        #10;
        S=4'1100;
        #10;
        S=4'1101;
        #10;
        S=4'1110;
        #10;
        S=4'1111s;
        #10;
        $display("Simulación terminada");
        $stop
        $finish
    end 

initial 
    begin 
        $monitor("S=%b, out=%b", S, out);
    end 

initial 
    begin
        $dumpfile("practica1_tb.vcd"); 
        $dumpvars(0, "parctica1_tb");
    end 

endmodule 