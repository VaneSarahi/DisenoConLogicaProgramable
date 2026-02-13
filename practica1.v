module practica1(
    input [3:0] S;
    output reg out;
);

always (*)
    begin 
        case(S)
            4'b0010: out=1;
            4'b0011: out=1;
            4'b0101: out=1;
            4'b0111: out=1;
            4'b1011: out=1;
            4'b1101: out=1;
            default: out=0;
        endcase
    end 
endmodule