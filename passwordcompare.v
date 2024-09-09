module passwordcompare(pw, start, clk, clr, in, out);
input[31:0] pw, in;
input start, clr, clk;
output out;
reg out=1, curflag=0, shiftflag=0;

always@(posedge clk)
begin
	if(!clr)
	begin
		//curflag<=shiftflag;
		out<=1;
	end
	else
	begin
		if(start)
			begin
				out<=!(pw==in);
			end
		else
			out<=1;
	end
end


/*
always@(posedge start)
begin
	shiftflag<=~shiftflag;
end
*/
endmodule
