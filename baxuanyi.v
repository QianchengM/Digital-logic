module baxuanyi(en,clk,m,s,ms,mout);
input[7:0] m,s;
input[9:0] ms;
input en,clk;
output[3:0] mout;
reg[3:0] mout;
reg[2:0] sel=0;
always@(posedge clk)
begin
	if(en)
	begin
		case(sel)
		3'b000:begin mout<=m/10; sel<=sel+1; end
		3'b001:begin mout<=m%10; sel<=sel+1; end
		3'b010:begin mout<=s/10; sel<=sel+1; end
		3'b011:begin mout<=s%10; sel<=sel+1; end
		3'b100:begin mout<=ms/100; sel<=sel+1; end
		3'b101:begin mout<=ms/10%10; sel<=sel+1; end
		3'b110:begin mout<=ms%10; sel<=0; end
		endcase
	end
end
endmodule
