module tb_four_bit_adder;

reg [3:0] A;
reg [3:0] B;
reg Cin;

wire [3:0] Sum;
wire Cout;

four_bit_adder DUT(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);

initial begin

    $dumpfile("adder.vcd");
    $dumpvars(0, tb_four_bit_adder);

    $monitor("Time=%0t A=%b B=%b Cin=%b Sum=%b Cout=%b",
              $time, A, B, Cin, Sum, Cout);

    A=4'b0000; B=4'b0000; Cin=0;
    #10;

    A=4'b0011; B=4'b0010; Cin=0;
    #10;

    A=4'b0101; B=4'b0011; Cin=0;
    #10;

    A=4'b1111; B=4'b0001; Cin=0;
    #10;

    A=4'b1010; B=4'b0101; Cin=1;
    #10;

    $finish;

end

endmodule
