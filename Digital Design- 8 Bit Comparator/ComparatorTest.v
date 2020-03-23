module comparatorTest();

reg A,B;

wire G, L, E;

Comparator D1(A, B, G, L, E);

initial 
  begin
      A = 1'b0; B = 1'b0;
  #64 A = 1'b0; B = 1'b1;
  #64 A = 1'b1; B = 1'b0;
  #64 A = 1'b1; B = 1'b1;

  #64 $finish();
  end

endmodule
