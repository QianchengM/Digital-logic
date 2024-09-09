module MSCountMachine(clrn,enp,ent,clk,qout,rco);
input clrn,enp,ent,clk;
output [9:0] qout;
output rco;
reg [9:0] qout;
reg qingling=0;
reg rco=0;

always@(posedge clk or negedge clrn) 
  begin
   if(!clrn)
     begin
       qout<=10'b0000000000;
		 rco=0;
     end
	else if(qout>=10'b1111100111)
		begin
			qout<=10'b0000000000;
			rco=1;
		end
   else if(enp && ent ==1)
     begin
       qout<=qout+1;
		 rco=0;
     end
   else 
	begin
	  qout<=qout;
	  rco=0;
	end
  end
//assign rco=(qout>=10'b1111100111 && ent) ? 1 : 0;
endmodule
