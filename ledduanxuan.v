module ledduanxuan(data,mode,a,b,c,d,e,f,g,sel,led,en);
input [3:0] data;
input [1:0] mode;
input en;
output a,b,c,d,e,f,g;
output sel;
output led;
reg a,b,c,d,e,f,g;
assign sel=1'b0;
reg led;
always @(data or mode or en)
	if(en)
	begin
	begin
		if(mode == 2'b00)
		begin
			led=1'b1;
			case(data)
				  4'b0000:{a,b,c,d,e,f,g}=7'b1111110;
				  4'b0001:{a,b,c,d,e,f,g}=7'b0110000;
				  4'b0010:{a,b,c,d,e,f,g}=7'b1101101;   			
				  4'b0011:{a,b,c,d,e,f,g}=7'b1111001;
				  4'b0100:{a,b,c,d,e,f,g}=7'b0110011;
				  4'b0101:{a,b,c,d,e,f,g}=7'b1011011;
				  4'b0110:{a,b,c,d,e,f,g}=7'b1011111;   			
				  4'b0111:{a,b,c,d,e,f,g}=7'b1110000;
				  4'b1000:{a,b,c,d,e,f,g}=7'b1111111;
				  4'b1001:{a,b,c,d,e,f,g}=7'b1111011;
					default:{a,b,c,d,e,f,g}=7'bx;  
			endcase
		end
		if(mode == 2'b01)
		begin
			led=1'b1;
			case(data)
				  4'b0000:{a,b,c,d,e,f,g}=7'b1111110;
				  4'b0001:{a,b,c,d,e,f,g}=7'b0110000;
				  4'b0010:{a,b,c,d,e,f,g}=7'b1101101;   			
				  4'b0011:{a,b,c,d,e,f,g}=7'b1111001;
				  4'b0100:{a,b,c,d,e,f,g}=7'b0110011;
				  4'b0101:{a,b,c,d,e,f,g}=7'b1011011;
				  4'b0110:{a,b,c,d,e,f,g}=7'b1011111;   			
				  4'b0111:{a,b,c,d,e,f,g}=7'b1110000;
				  4'b1000:{a,b,c,d,e,f,g}=7'b1111111;
				  4'b1001:{a,b,c,d,e,f,g}=7'b1111011;
					default:{a,b,c,d,e,f,g}=7'b0000000; 
			endcase
		end
		if(mode == 2'b10)
		begin
			led=1'b1;
			case(data)
				  4'b0000:{a,b,c,d,e,f,g}=7'b1111110;
				  4'b0001:{a,b,c,d,e,f,g}=7'b0110000;
				  4'b0010:{a,b,c,d,e,f,g}=7'b1101101;   			
				  4'b0011:{a,b,c,d,e,f,g}=7'b1111001;
				  4'b0100:{a,b,c,d,e,f,g}=7'b0110011;
				  4'b0101:{a,b,c,d,e,f,g}=7'b1011011;
				  4'b0110:{a,b,c,d,e,f,g}=7'b1011111;   			
				  4'b0111:{a,b,c,d,e,f,g}=7'b1110000;
				  4'b1000:{a,b,c,d,e,f,g}=7'b1111111;
				  4'b1001:{a,b,c,d,e,f,g}=7'b1111011;
					default:{a,b,c,d,e,f,g}=7'b1111111; 
			endcase
		end
		if(mode == 2'b11)
		begin
			led=1'b0;   
			case(data)
				  4'b0000:{a,b,c,d,e,f,g}=7'b1111110;
				  4'b0001:{a,b,c,d,e,f,g}=7'b0110000;
				  4'b0010:{a,b,c,d,e,f,g}=7'b1101101;   			
				  4'b0011:{a,b,c,d,e,f,g}=7'b1111001;
				  4'b0100:{a,b,c,d,e,f,g}=7'b0110011;
				  4'b0101:{a,b,c,d,e,f,g}=7'b1011011;
				  4'b0110:{a,b,c,d,e,f,g}=7'b1011111;   			
				  4'b0111:{a,b,c,d,e,f,g}=7'b1110000;
				  4'b1000:{a,b,c,d,e,f,g}=7'b1111111;
				  4'b1001:{a,b,c,d,e,f,g}=7'b1111011;
				  4'b1010:{a,b,c,d,e,f,g}=7'b1110111;
				  4'b1011:{a,b,c,d,e,f,g}=7'b0011111;
				  4'b1100:{a,b,c,d,e,f,g}=7'b1001110;
				  4'b1101:{a,b,c,d,e,f,g}=7'b0111101;
				  4'b1110:{a,b,c,d,e,f,g}=7'b1001111;
				  4'b1111:{a,b,c,d,e,f,g}=7'b1000111;
					default:{a,b,c,d,e,f,g}=7'b1111111; 
			endcase		
		end
	end
	end
	else
	{a,b,c,d,e,f,g}=7'b0000000;
endmodule
