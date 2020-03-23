module Comparator(A, B, G, L, E);

input A, B;

output G, L, E;


assign G = A & ~B;
assign L = ~A & B;
assign E = A & B | ~A & ~B;

endmodule 