module fenpinqi11(clk, clk_xhz, sel, en);
input clk, en;
input[1:0] sel;
output clk_xhz;
reg clk_xhz;
reg[31:0] cnt;


always@(posedge clk)
begin
if(sel==2'b00)
begin
	if(cnt<=32'd25_000_000)
		begin
		 cnt<=cnt+'b1;
	  end
	else
	   begin
		  if(en)
		  begin
			 clk_xhz<=~clk_xhz;
			 cnt<='b0;
		  end
		end  
end
else if(sel==2'b01)
begin
	if(cnt<=32'd25_000_00)
		 begin
		 cnt<=cnt+'b1;
	  end
	else
	    begin
		  if(en)
		  begin
			 clk_xhz<=~clk_xhz;
			 cnt<='b0;
		  end
		end
end

else if(sel==2'b11)
begin
	if(cnt<=32'd500000)
		begin
		 cnt<=cnt+'b1;
	  end
	else
	  begin
		  if(en)
		  begin
			 clk_xhz<=~clk_xhz;
			 cnt<='b0;
		  end
		end
end
else if(sel==2'b10)
	if(cnt<=32'd25000)
		begin
		 cnt<=cnt+'b1;
	  end
	else
	   begin
		  if(en)
		  begin
			 clk_xhz<=~clk_xhz;
			 cnt<='b0;
		  end
		end  
end
endmodule
  