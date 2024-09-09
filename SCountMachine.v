module SCountMachine(clrn,enp,ent,msrco,qout,rco);
input clrn,enp,ent,msrco;
output [7:0] qout;
output rco;
reg rco=0;
reg [7:0] qout=0;
reg t=0;
always@(posedge msrco or negedge clrn)
  begin
	  if(!clrn)
	      qout<=8'b00000000;
	  else if(qout>=8'b00111011)
	  begin
	   	rco=1;
		   qout<=8'b00000000;
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
//  assign rco=(t && ent) ? 1 : 0;
endmodule