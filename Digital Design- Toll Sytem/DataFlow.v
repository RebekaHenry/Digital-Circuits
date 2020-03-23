/*Project: Toll System Test Bench
 *Authors: Luke Hoksam and Rebeka Henry
 *This module represents SOP logic for the Toll
 *System project. It assigns the arbitrary
 *propagation delay of 16.
 *WD = WeekDay
 *RH = RushHour
 *LN = LateNight
 *HT = HighTraffic
*/
module TollData(WD, RH, LN, HT, H, M, L, E);

input WD, RH, LN, HT;

output H; //high
output M; //medium
output L; //low
output E; //error

assign #16 H =	 ~RH & HT 
	      |  ~LN & HT 
              |   WD & RH & ~LN;
assign #16 M =	LN & RH 
              |~WD & ~LN & ~HT 
              |~RH & ~LN & ~HT;

assign #16 L = ~RH & LN & ~HT;
assign #16 E = LN & RH;

endmodule
