 module xuliechansheng(clk, clr, dout);
input clk, clr;
output dout;
reg dout;
reg[7:0] data;
always@(posedge clk)
  begin
  if(!clr)
    begin
	   dout<=0;
		data<=8'b10011010;
	 end
  else
    begin
	   dout<=data[7];
		data<={data[6:0], data[7]};
	 end
  end
endmodule