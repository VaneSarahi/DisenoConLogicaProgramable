module practica4(
    input clk,
    input [3:0] SW,
    input [1:0] KEY, 
    output reg [0:6] HEX0,
    output reg [0:6] HEX1,
    output reg [0:6] HEX2,
    output reg [0:6] HEX3
);

//clock divider 
reg [25:0] counter;
reg clk_div;

//clk divider
always @(posedge clk)
    begin 
        counter <= counter + 1;
        clk_div <= counter [25];
    end 

	 
//parametros 

parameter [15:0] password= 16'h1234;
parameter idle=0, S1=1, S2=2, S3=3, GOOD=4, BAD=5 ; //S4 -> good S5-> bad

reg [2:0] state, next;
wire [3:0] x = SW;
wire reset = ~KEY[0];
wire check = ~KEY[1];

reg [3:0] d0, d1, d2, d3; //para no tener que definir los caso uno a uno
wire [0:6] D0, D1, D2, D3;

 // Instancias BCD
BCD disp0 (.bcd_in(d0), .bcd_out(D0));
BCD disp1 (.bcd_in(d1), .bcd_out(D1));
BCD disp2 (.bcd_in(d2), .bcd_out(D2));
BCD disp3 (.bcd_in(d3), .bcd_out(D3));

//Current state 

always @(posedge clk_div or posedge reset)
    begin 
        if (reset)
            state <= idle;
        else
            state <= next;
    end 

always @(*)
    begin
		if (reset)
		begin 
			next <= idle;
			d0<=0;
			d1<=0;
			d2<=0;
			d3<=0;
		end
		
		else 
		begin 
		case (state)
        idle: 
            if (check)
                begin
					d0 <= SW;
                if ( SW == password[3:0])
                    next = S1;
                else 
                    next= BAD;
                end
            else 
                next=idle;
        S1:
            if (check)
                begin
					 d1 <= SW;
                if (SW == password[7:4])
                    next = S2;
                else 
                    next= BAD;
                end
            else 
                next=S1;
        S2: 
            if (check)
                    begin
						  d2 <= SW;
                    if (SW == password[11:8])
                        next = S3;
                    else 
                        next= BAD;
                    end
            else 
                next=S2;
        S3:
        if (check)
                begin
					 d3 <= SW;
                if (SW == password[15:12])
                    next = GOOD;
                else 
                    next= BAD;
                end
            else 
                next=S2;
        
        GOOD:
            if (reset)
                next = idle;
            else 
                next= GOOD;
        
        BAD:
            if (reset)
                next= idle;
            else 
                next = BAD;

        default:
            next = idle;
    endcase 
    end
end 
    
    //outputs 
    always @(*)
    begin   
	case(state)
		idle:
		begin
			HEX0 = 7'b0000001;
			HEX1 = 7'b0000001;
			HEX2 = 7'b0000001;
			HEX3 = 7'b0000001;
			end

		GOOD: //good
			begin
			HEX0 = 7'b1000010;
			HEX1 = 7'b0000001;
			HEX2 = 7'b0000001;
			HEX3 = 7'b0100001;
			end
		
		BAD: //bad
			begin
			HEX0 = 7'b1000010;
			HEX1 = 7'b0001000;
			HEX2 = 7'b1100000; 
			HEX3 = 7'b1111111;
			end
			
		default://0000
			begin
			HEX0 = D0;
			HEX1 = D1;
			HEX2 = D2; 
			HEX3 = D3;
			end
	endcase
	end
    


    

endmodule