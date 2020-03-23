module Comparator8Bit (A, B, GreaterThan, LessThan, Equal);

//create the inputs
input [7:0]A,B;

output GreaterThan, LessThan, Equal;

//create an array of wires for GreaterThan, Less Than, and Equal
wire [7:0]wGT, wLT,wE;

wire a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p;

//Calling instances of the 1 bit comparator and connecting them to the wires
Comparator C0(A[0],B[0],wGT[0], wLT[0], wE[0]);
Comparator C1(A[1],B[1],wGT[1], wLT[1], wE[1]);
Comparator C2(A[2],B[2],wGT[2], wLT[2], wE[2]);
Comparator C3(A[3],B[3],wGT[3], wLT[3], wE[3]);
Comparator C4(A[4],B[4],wGT[4], wLT[4], wE[4]);
Comparator C5(A[5],B[5],wGT[5], wLT[5], wE[5]);
Comparator C6(A[6],B[6],wGT[6], wLT[6], wE[6]);
Comparator C7(A[7],B[7],wGT[7], wLT[7], wE[7]);

//after connecting with wires, assign to Equal
assign Equal = wE[0]&wE[1]&wE[2]&wE[3]&wE[4]&wE[5]&wE[6]&wE[7];

assign a = wGT[0]&wE[1]&wE[2]&wE[3]&wE[4]&wE[5]&wE[6]&wE[7];
assign b = wGT[1]&wE[2]&wE[3]&wE[4]&wE[5]&wE[6]&wE[7];
assign c = wGT[2]&wE[3]&wE[4]&wE[5]&wE[6]&wE[7];
assign d = wGT[3]&wE[4]&wE[5]&wE[6]&wE[7];
assign e = wGT[4]&wE[5]&wE[6]&wE[7];
assign f = wGT[5]&wE[6]&wE[7];
assign g = wGT[6]&wE[7];
assign h = wGT[7];
//after connecting with wires, assign to Greater than
assign GreaterThan = a|b|c|d|e|f|g|h;


assign i = wLT[0]&wE[1]&wE[2]&wE[3]&wE[4]&wE[5]&wE[6]&wE[7];
assign j = wLT[1]&wE[2]&wE[3]&wE[4]&wE[5]&wE[6]&wE[7];
assign k = wLT[2]&wE[3]&wE[4]&wE[5]&wE[6]&wE[7];
assign l = wLT[3]&wE[4]&wE[5]&wE[6]&wE[7];
assign m = wLT[4]&wE[5]&wE[6]&wE[7];
assign n = wLT[5]&wE[6]&wE[7];
assign o = wLT[6]&wE[7];
assign p = wLT[7];

//after connecting with wires, assign to Less than
assign LessThan = i|j|k|l|m|n|o|p;

endmodule
