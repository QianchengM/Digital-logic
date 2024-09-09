module encontrol(enin, enout);
input enin;
output enout;
reg enout=0;

always@ (posedge enin)
begin
	if(enout==1)
	   enout=0;
	else
	   enout=1;
end
endmodule