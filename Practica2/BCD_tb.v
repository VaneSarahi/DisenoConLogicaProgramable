module BCD_tb ();
    reg [3:0] bcd_in;
    wire [0:6] bcd_out;

    BCD DUT(
        .bcd_in(bcd_in),
        .bcd_out(bcd_out)   
    );

    initial 
        begin
            repeat (20)
            begin 
                bcd_in=$random % 16;
                #10;
            end 
            $stop;
            $finish;
        end 

    initial 
        begin
        $monitor("bcd_in=%b, bcd_out=%b", bcd_in, bcd_out);
        end
    
    initial 
        begin 
            $dumpfile("BCD.vcd");
            $dumpvars(0, "BCD_tb");
        end 

endmodule 