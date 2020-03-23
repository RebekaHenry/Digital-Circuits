/*Project: Toll System Test Bench
 *Authors: Luke Hoksam and Rebeka Henry
 *This module represents the test bench for the Toll System
 *Project. It utilizes doubles the propagation delay from 16
 *to 32. It illustrates the truth table for the project.
*/

module testData();

reg WD, RH, LN, HT;

wire H, M, L, E;

TollData D1(WD, RH, LN, HT, H, M, L, E);

initial 
  begin

  #32 WD = 1'b0; RH = 1'b0; LN = 1'b0; HT = 1'b0;
  #32 WD = 1'b0; RH = 1'b0; LN = 1'b0; HT = 1'b1;
  #32 WD = 1'b0; RH = 1'b0; LN = 1'b1; HT = 1'b0;
  #32 WD = 1'b0; RH = 1'b0; LN = 1'b1; HT = 1'b1;
  #32 WD = 1'b0; RH = 1'b1; LN = 1'b0; HT = 1'b0;
  #32 WD = 1'b0; RH = 1'b1; LN = 1'b0; HT = 1'b1;
  #32 WD = 1'b0; RH = 1'b1; LN = 1'b1; HT = 1'b0;
  #32 WD = 1'b0; RH = 1'b1; LN = 1'b1; HT = 1'b1;
  #32 WD = 1'b1; RH = 1'b0; LN = 1'b0; HT = 1'b0;
  #32 WD = 1'b1; RH = 1'b0; LN = 1'b0; HT = 1'b1;
  #32 WD = 1'b1; RH = 1'b0; LN = 1'b1; HT = 1'b0;
  #32 WD = 1'b1; RH = 1'b0; LN = 1'b1; HT = 1'b1;
  #32 WD = 1'b1; RH = 1'b1; LN = 1'b0; HT = 1'b0;
  #32 WD = 1'b1; RH = 1'b1; LN = 1'b0; HT = 1'b1;
  #32 WD = 1'b1; RH = 1'b1; LN = 1'b1; HT = 1'b0;
  #32 WD = 1'b1; RH = 1'b1; LN = 1'b1; HT = 1'b1;

  #32 $finish();
  end

endmodule


