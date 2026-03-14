module BCD_4displays_tb #(parameter N_in=10, N_out=7)();
    reg [N_in-1:0] bcd_in;
    wire [N_out-1:0] D_u, D_d, D_c, D_m;

    BCD_4displays DUT(
        .bcd_in(bcd_in),
        .D_un(D_u),
        .D_de(D_d),
        .D_ce(D_c),
        .D_mi(D_m)
    );
    
    initial 
        begin
            repeat (1024)
            begin
                bcd_in= $random % 1023;
                #10; 
            end 
            $stop;
            $finish;
        end 

    initial 
        begin 
        $monitor("bcd_in=%b, D_u=%b, D_d=%b, D_c=%b, D_m=%b", bcd_in, D_u, D_d, D_c, D_m);
        end 
    
    initial 
        begin 
            $dumpfile("BCD4Displays.vcd");
            $dumpvars(0, BCD_4displays_tb);
        end

endmodule 