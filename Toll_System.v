module TollSystem(High,Med,Low,Err,WD,RH,LN,HT);
input WD, RH, LN, HT;
output High, Med, Low, Err;

wire H1,H2,H3;

wire M1,M2,M3;

not #(8)// creating not inputs TI-SNx4HC04
n1(nWD,WD),
n2(nRH,RH),
n3(nLN,LN),
n4(nHT,HT);
and #(7) // 2input and gates for High TI-cd74HCT08
HAnd1(H1,nRH,HT),
HAnd2(H2,nLN,HT);

and #(11)// the three and gates for High TI-cd74HCT11
HAnd3(H3,WD,RH,nLN);


or  #(9)// Or gate for High TI-cd74HCT4075
HiOr(High,H1,H2,H3);

and #(7) // 2input and gate for Medium TI-cd74HCT08
Mand1(M1,LN,RH);

and #(11)// Three and gates for Medium TI-cd74HCT11

Mand2(M2,nWD,nLN,nHT),
Mand3(M3,nRH,nLN,nHT);

or  #(9)// Or gate for medium output TI-cd74HCT4075
MOr(Med,M1,M2,M3);

and #(11) // and gate for Low TI-cd74HCT11
LAnd(Low,nRH,LN,nHT);
and #(7) // and gate for Error TI-cd74HCT08
EAnd(Err,LN,RH);

endmodule