module fangdou2(clk, in, out);
input clk, in;
output out;
reg[4:0] cnt=0;
reg out=1;
reg state1, state2;
always@(posedge clk)
begin
	state1<=state2;
	state2<=in;
	if(state1==state2)
		cnt<=cnt+1'b1;
	else
		cnt<=0;
		
	if(cnt==5'b11010)
		out<=in;
end

endmodule