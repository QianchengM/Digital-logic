module DuanXuanSaoMiao(en,num,clk,in,mout);
input[31:0] in;
input en,clk;
input[3:0] num;
output[3:0] mout;
reg[3:0] mout=0;
reg[3:0] sel=0;
always@(posedge clk)
begin
	if(en)
	begin
	
		if(num==0)
			sel<=4'b0000;
			
			case(num)
			4'b0000:
				begin
					
					case(sel)
					4'b0000:begin mout<=in[31:28]; sel<=sel+0; end
					endcase
				end
			4'b0001:
				begin
					case(sel)
					4'b0000:begin mout<=in[31:28]; sel<=sel+1; end
					4'b0001:begin mout<=in[27:24]; sel<=0; end
					endcase
				end
			4'b0010:
				begin
					case(sel)
					4'b0000:begin mout<=in[31:28]; sel<=sel+1; end
					4'b0001:begin mout<=in[27:24]; sel<=sel+1; end
					4'b0010:begin mout<=in[23:20]; sel<=0; end
					endcase
				end
			4'b0011:
				begin
					case(sel)
					4'b0000:begin mout<=in[31:28]; sel<=sel+1; end
					4'b0001:begin mout<=in[27:24]; sel<=sel+1; end
					4'b0010:begin mout<=in[23:20]; sel<=sel+1; end
					4'b0011:begin mout<=in[19:16]; sel<=0; end
					endcase
				end
			4'b0100:
				begin
					case(sel)
					4'b0000:begin mout<=in[31:28]; sel<=sel+1; end
					4'b0001:begin mout<=in[27:24]; sel<=sel+1; end
					4'b0010:begin mout<=in[23:20]; sel<=sel+1; end
					4'b0011:begin mout<=in[19:16]; sel<=sel+1; end
					4'b0100:begin mout<=in[15:12]; sel<=0; end
					endcase
				end
			4'b0101:
				begin
					case(sel)
					4'b0000:begin mout<=in[31:28]; sel<=sel+1; end
					4'b0001:begin mout<=in[27:24]; sel<=sel+1; end
					4'b0010:begin mout<=in[23:20]; sel<=sel+1; end
					4'b0011:begin mout<=in[19:16]; sel<=sel+1; end
					4'b0100:begin mout<=in[15:12]; sel<=sel+1; end
					4'b0101:begin mout<=in[11:8]; sel<=0; end
					endcase
				end
			4'b0110:
				begin
					case(sel)
					4'b0000:begin mout<=in[31:28]; sel<=sel+1; end
					4'b0001:begin mout<=in[27:24]; sel<=sel+1; end
					4'b0010:begin mout<=in[23:20]; sel<=sel+1; end
					4'b0011:begin mout<=in[19:16]; sel<=sel+1; end
					4'b0100:begin mout<=in[15:12]; sel<=sel+1; end
					4'b0101:begin mout<=in[11:8]; sel<=sel+1; end
					4'b0110:begin mout<=in[7:4]; sel<=0; end
					endcase
				end
			default:
				begin
					case(sel)
					4'b0000:begin mout<=in[31:28]; sel<=sel+1; end
					4'b0001:begin mout<=in[27:24]; sel<=sel+1; end
					4'b0010:begin mout<=in[23:20]; sel<=sel+1; end
					4'b0011:begin mout<=in[19:16]; sel<=sel+1; end
					4'b0100:begin mout<=in[15:12]; sel<=sel+1; end
					4'b0101:begin mout<=in[11:8]; sel<=sel+1; end
					4'b0110:begin mout<=in[7:4]; sel<=sel+1; end
					4'b0111:begin mout<=in[3:0]; sel<=0; end
					endcase
				end
			endcase
	end
end
endmodule
