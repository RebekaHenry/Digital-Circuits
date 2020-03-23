module test();

reg WD, RH, LN, HT;
wire High, Med, Low, Err;

TollSystem TS0(High,Med,Low,Err,WD,RH,LN,HT);

initial
begin
	WD=0; RH=0; LN=0; HT=0;
  #10   WD=0; RH=0; LN=0; HT=1;
  #10   WD=0; RH=0; LN=1; HT=0;
  #10   WD=0; RH=0; LN=1; HT=1;
  #10   WD=0; RH=1; LN=0; HT=0;
  #10   WD=0; RH=1; LN=0; HT=1;
  #10   WD=0; RH=1; LN=1; HT=0;
  #10   WD=0; RH=1; LN=1; HT=1;
  #10   WD=1; RH=0; LN=0; HT=0;
  #10   WD=1; RH=0; LN=0; HT=1;
  #10   WD=1; RH=0; LN=1; HT=0;
  #10   WD=1; RH=0; LN=1; HT=1;
  #10   WD=1; RH=1; LN=0; HT=0;
  #10   WD=1; RH=1; LN=0; HT=1;
  #10   WD=1; RH=1; LN=1; HT=0;
  #10   WD=1; RH=1; LN=1; HT=1;
  
#10
$finish();
end
endmodule
