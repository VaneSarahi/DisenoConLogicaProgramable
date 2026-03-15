module BCD(
    input [3:0] bcd_in,
    output reg [0:6] bcd_out //Cuando se usa la sentencia always se debe usar "reg" en el output 
);

always @(*)
begin 
    case (bcd_in)
        4'b0000: bcd_out= ~7'b1111110; //puede también escribirse como 0: bcd_out= 7'h7E;
        4'b0001: bcd_out= ~7'b0110000;
        4'b0010: bcd_out= ~7'b1101101;
        4'b0011: bcd_out= ~7'b1111001;
        4'b0100: bcd_out= ~7'b0110011;
        4'b0101: bcd_out= ~7'b1011011;
        4'b0110: bcd_out= ~7'b1011111;
        4'b0111: bcd_out= ~7'b1110000;
        4'b1000: bcd_out= ~7'b1111111;
        4'b1001: bcd_out= ~7'b1111011;
        //Los casos después del 10, se pondrán en un default porque para nosotros son don't cares
        default: bcd_out= ~7'b0000000;
    endcase 
end

endmodule
