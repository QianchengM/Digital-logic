module KeyValueDealer
(
    input wire	CLK,
	 input wire en,
    input wire	nRST,
    input wire	KeyPressFlag,
    input wire[3:0] InputData,
    output reg[31:0] OutputData,
	 output reg[3:0] CntNum
);

reg ShiftFlag;
reg CurFlag;
reg[3:0] CntNumC;

initial
begin
    OutputData=32'd0;
	 CntNum=4'd0;
	 ShiftFlag=1'b0;
	 CurFlag=1'b0;
	 CntNumC=4'd0;
end

always@(posedge CLK)
begin
	if(en)
	begin
		 if(!nRST)
		 begin
			  OutputData<=32'd0;
			  CntNum<=4'd0;
			  CntNumC<=4'd0;
			  CurFlag<=ShiftFlag;
		 end
		 else
		 begin
			  if(CurFlag!=ShiftFlag)
			  begin
					CurFlag<=ShiftFlag;		
					if(CntNumC==0)
						begin
							OutputData[31:28]<=InputData;
						end
					else
						begin
							OutputData<=OutputData>>4;	
							OutputData[31:28]<=InputData;
						end
					if(CntNumC<8)    
						begin
							CntNumC<=CntNumC+1'b1;
							if(CntNum<7 && CntNumC>=1)
								CntNum<=CntNum+1'b1;
							else
								CntNum<=CntNum;
						end
					else   CntNumC<=CntNumC;
			  end
			  else
			  begin
					OutputData<=OutputData;
					CntNum<=CntNum;
			  end
		 end
	end
	else
		CurFlag<=ShiftFlag;
end

always@(posedge KeyPressFlag)
begin
    ShiftFlag<=~ShiftFlag;
end

endmodule 