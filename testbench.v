`timescale 1ns/1ps

module tb_ripple_carry_adder;

// Inputs
reg [3:0] A;
reg [3:0] B;
reg Cin;

// Outputs
wire [3:0] Sum;
wire Cout;


// Instantiate the Design Under Test (DUT)
ripple_carry_adder uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
);


initial begin

    // Create waveform file
    $dumpfile("dump.vcd");
    $dumpvars(0, tb_ripple_carry_adder);

    // Display outputs
    $monitor("A=%b B=%b Cin=%b Sum=%b Cout=%b",
              A, B, Cin, Sum, Cout);

    // Test Case 1
    A = 4'b0001;
    B = 4'b0010;
    Cin = 0;
    #10;

    // Test Case 2
    A = 4'b0101;
    B = 4'b0011;
    Cin = 0;
    #10;

    // Test Case 3
    A = 4'b1111;
    B = 4'b0001;
    Cin = 0;
    #10;

    // Test Case 4
    A = 4'b1010;
    B = 4'b0101;
    Cin = 1;
    #10;

    // Stop simulation
    $finish;

end

endmodule