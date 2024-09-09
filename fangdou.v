module fangdou(in, clk, out);
input in, clk;
output out;
reg[4:0] cnt=0;
reg cnts=0, cntsc=0, out=0;


always@(negedge in)
begin
	
	cnts<=1;
	if(cntsc==1)
		cnts<=0;
end
	
	
always@(posedge clk)
begin
	cnt<=cnt+1;
	if(cnt>=30)
	begin
		cntsc<=0;
		cnt<=0;
		if(in==0)
			out<=1;
	end
	else
		out<=0;
end

endmodule