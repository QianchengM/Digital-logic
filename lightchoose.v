module lightchoose(clk, num, en, selOut);
input clk,en;
input[3:0] num;
output[7:0] selOut;
reg[2:0] light=0;
reg[7:0] selOut;

always@(posedge clk)
begin
	if(en)
	begin
	
		if(num==4'b0000)
			light<=3'b000;
			
		case(num)
			4'b0000:
				case(light)
				3'b000:begin selOut<=8'b11111110; light<=0; end
				endcase
			4'b0001:
				case(light)
				3'b000:begin selOut<=8'b11111110; light<=light+1; end
				3'b001:begin selOut<=8'b11111101; light<=0; end
				endcase
			4'b0010:
				case(light)
				3'b000:begin selOut<=8'b11111110; light<=light+1; end
				3'b001:begin selOut<=8'b11111101; light<=light+1; end
				3'b010:begin selOut<=8'b11111011; light<=0; end
				endcase
			4'b0011:
				case(light)
				3'b000:begin selOut<=8'b11111110; light<=light+1; end
				3'b001:begin selOut<=8'b11111101; light<=light+1; end
				3'b010:begin selOut<=8'b11111011; light<=light+1; end
				3'b011:begin selOut<=8'b11110111; light<=0; end
				endcase
			4'b0100:
				case(light)
				3'b000:begin selOut<=8'b11111110; light<=light+1; end
				3'b001:begin selOut<=8'b11111101; light<=light+1; end
				3'b010:begin selOut<=8'b11111011; light<=light+1; end
				3'b011:begin selOut<=8'b11110111; light<=light+1; end
				3'b100:begin selOut<=8'b11101111; light<=0; end
				endcase
			4'b0101:
				case(light)
				3'b000:begin selOut<=8'b11111110; light<=light+1; end
				3'b001:begin selOut<=8'b11111101; light<=light+1; end
				3'b010:begin selOut<=8'b11111011; light<=light+1; end
				3'b011:begin selOut<=8'b11110111; light<=light+1; end
				3'b100:begin selOut<=8'b11101111; light<=light+1; end
				3'b101:begin selOut<=8'b11011111; light<=0; end
				endcase
			4'b0110:
				case(light)
				3'b000:begin selOut<=8'b11111110; light<=light+1; end
				3'b001:begin selOut<=8'b11111101; light<=light+1; end
				3'b010:begin selOut<=8'b11111011; light<=light+1; end
				3'b011:begin selOut<=8'b11110111; light<=light+1; end
				3'b100:begin selOut<=8'b11101111; light<=light+1; end
				3'b101:begin selOut<=8'b11011111; light<=light+1; end
				3'b110:begin selOut<=8'b10111111; light<=0; end
				endcase
			default:
				case(light)
				3'b000:begin selOut<=8'b11111110; light<=light+1; end
				3'b001:begin selOut<=8'b11111101; light<=light+1; end
				3'b010:begin selOut<=8'b11111011; light<=light+1; end
				3'b011:begin selOut<=8'b11110111; light<=light+1; end
				3'b100:begin selOut<=8'b11101111; light<=light+1; end
				3'b101:begin selOut<=8'b11011111; light<=light+1; end
				3'b110:begin selOut<=8'b10111111; light<=light+1; end
				3'b111:begin selOut<=8'b01111111; light<=light+1; end
				endcase
		endcase
		
	end
end

endmodule
