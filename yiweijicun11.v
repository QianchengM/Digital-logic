module yiweijicun11(clr, clkc, clk, clrtr, Rin, Lin, sel, Qout, num);
input clr, clk, clkc;//
input[3:0] Rin, Lin;
input[1:0] sel;
output[31:0] Qout;
output[3:0] num;
output clrtr;
reg[31:0] Qout=32'bz;
reg clrt=0, clrtr=0, t;
reg[3:0] num=4'b0000;
reg sp;
/*
always@(clr)

begin
	if(!clr)
		clrt<=1;
	if(clrtr==1)
		clrt<=0;
end

always@(clkc)
begin
	if(t)
	
		num=num+1;
		if(num==7)
			num=num;
end
*/
/*
always@(posedge clkc)
begin
	if(!clr)
		num<=0;
	if(num==7)
		num<=num;
	if(sp==1 && clr==1)
	begin
		if(num==7)
			num<=num;
			num<=num+1;
	end
end*/




 always@(posedge clk or posedge clr)//
 begin
    if(clr)//
		 begin
			Qout<=32'bz;
			
			clrtr<=1;
			num<=0;
		//	sp<=0;
		 end
	 else
	  begin		
		clrtr<=0;
		case(sel)
		  2'b00:Qout<=Qout;
		  2'b11:
		    begin
		      Qout<=Qout>>4;
				Qout[31:28]<=Rin;
				num<=num+1;
				//sp<=1;
			 end
		  2'b10:
		    begin
			   Qout<=Qout<<4;
				Qout[3:0]<=Lin;
			 end
		endcase
		
		if(num==7)
			begin
				num<=num;
			end
		clrtr<=0;
	  end
 end
endmodule