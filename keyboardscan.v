module keyboardscan(clk, SWC, SWR, key, numclk);
input  clk;
input[3:0] SWC;
output[3:0] SWR, key;
output numclk;
reg[3:0] SWR=4'b1110, key=4'bz;
reg[3:0] state1=0, state2=0;
reg numclk=0;
reg f=0;

always@(posedge clk)
begin	

	if(SWR==4'b1110)
	begin
		case(SWC)
			4'b1110:begin key<=0; numclk<=1; end
			4'b1101:begin key<=1; numclk<=1; end
			4'b1011:begin key<=2; numclk<=1; end
			4'b0111:begin key<=3; numclk<=1; end
			default:numclk<=0;
		endcase
		
	end
	
	else if(SWR==4'b1101)
	begin
		case(SWC)
			4'b1110:begin key<=4; numclk<=1; end
			4'b1101:begin key<=5; numclk<=1; end
			4'b1011:begin key<=6; numclk<=1; end
			4'b0111:begin key<=7; numclk<=1; end
			default:numclk<=0;
		endcase

	end
	
	else if(SWR==4'b1011)
	begin
		case(SWC)
			4'b1110:begin key<=8; numclk<=1; end
			4'b1101:begin key<=9; numclk<=1; end
			4'b1011:begin key<=10; numclk<=1; end
			4'b0111:begin key<=11; numclk<=1; end
			default:numclk<=0;
		endcase

	end
	
	else if(SWR==4'b0111)
	begin
		case(SWC)
			4'b1110:begin key<=12; numclk<=1; end
			4'b1101:begin key<=13; numclk<=1; end
			4'b1011:begin key<=14; numclk<=1; end
			4'b0111:begin key<=15; numclk<=1; end
			default:numclk<=0;
		endcase		
	end
//////////////////CASE!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	case(SWR)
		4'b1110:SWR<=4'b1101;
		4'b1101:SWR<=4'b1011;
		4'b1011:SWR<=4'b0111;
		4'b0111:SWR<=4'b1110;
		default:SWR<=4'b1110;
	endcase
end

endmodule
