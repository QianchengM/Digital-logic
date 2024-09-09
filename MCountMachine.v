module MCountMachine(clrn,enp,ent,srco,qout,rco);
input clrn,enp,ent,srco;
output [7:0] qout;
output rco;
reg [7:0] qout=0;

always@(posedge srco or negedge clrn) 
  begin
   if(!clrn)
     begin
       qout<=8'b00000000;
     end
   else if(enp && ent ==1)
     begin
       qout<=qout+1;
     end
   else 
	  qout<=qout;
  end
  
  assign rco=(qout>=8'b00111011 && ent) ? 1 : 0;
endmodule