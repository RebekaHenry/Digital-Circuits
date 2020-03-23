/*************************Golden Module*************************************/
module GoldenComparator (GA, GB, GG, GL, GE);
input [7:0] GA, GB;
output reg GG, GL, GE;
always@(GA, GB)
begin

	if (GA>GB) GG = 1'b1; else GG = 1'b0;
	if (GA<GB) GL = 1'b1; else GL = 1'b0;
	if (GA==GB) GE = 1'b1; else GE = 1'b0;
	
end
endmodule


/*************************Testbench*************************************/
module TestComparator8Bit();
reg [7:0] A, B;
wire GreaterThan, LessThan, Equal, Golden_GreaterThan, Golden_LessThan, Golden_Equal;
integer stimulus;
reg error;
parameter stimulusmax = 65536; //2^16


//Report Errors to screen
task ReportError;
begin
$display("\n***Error.  A=%b B=%b| Expected GreaterThan=%b LessThan=%b Equal=%b | Returned GreaterThan=%b LessThan=%b Equal=%b ", A, B, Golden_GreaterThan, Golden_LessThan, Golden_Equal, GreaterThan, LessThan, Equal);
end
endtask



initial
begin
	//Initial Message
	error = 0;
	$display ("\n ALU8Bit Test\n");
  
  
	//Exhaustive Test
    for (stimulus=0; stimulus < stimulusmax; stimulus = stimulus +1)
    begin
      {A, B} = stimulus[15:0];
      #100
      if(Golden_GreaterThan !== GreaterThan || Golden_LessThan !== LessThan ||Golden_Equal !== Equal)
      begin
        ReportError;
        error=1;
      end
    end

	//Final Message
	if (!error)
		$display("*** Congratulations!	 No errors detected\n");
	else
		$display("*** Sorry.	Try again.\n");
	
  $finish();
end



//Device under Test
Comparator8Bit C1 (A, B, GreaterThan, LessThan, Equal);
GoldenComparator GC1 (A, B, Golden_GreaterThan, Golden_LessThan, Golden_Equal);

endmodule
