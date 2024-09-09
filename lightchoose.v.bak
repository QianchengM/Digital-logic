module lightChoose(clk, en, selOut);
input clk,en;
output[6:0] selOut;
reg[2:0] light=0;
reg[6:0] selOut;

always@(posedge clk)
begin
	if(en)
	begin
		case(light)
		3'b000:begin selOut<=7'b1111110; light<=light+1; end
		3'b001:begin selOut<=7'b1111101; light<=light+1; end
		3'b010:begin selOut<=7'b1111011; light<=light+1; end
		3'b011:begin selOut<=7'b1110111; light<=light+1; end
		3'b100:begin selOut<=7'b1101111; light<=light+1; end
		3'b101:begin selOut<=7'b1011111; light<=light+1; end
		3'b110:begin selOut<=7'b0111111; light<=0; end
		endcase
	end
end

endmodule
