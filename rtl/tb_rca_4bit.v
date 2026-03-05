`timescale 1ns/1ps

module tb_rca_4bit;

reg [3:0] A, B;
reg Cin;

wire [3:0] S;
wire Cout;

rca_4bit dut(.A(A), .B(B), .Cin(Cin), .S(S), .Cout(Cout));

initial begin
    $dumpfile("rca_4bit.vcd");
    $dumpvars(0, dut);

    $monitor("%b %b %b | %b %b", A, B, Cin, S, Cout);

    A=4'b0000; B=4'b0000; Cin=0; #10;
    A=4'b0001; B=4'b0010; Cin=0; #10;
    A=4'b0101; B=4'b0011; Cin=0; #10;
    A=4'b1111; B=4'b0001; Cin=0; #10;
    A=4'b1010; B=4'b0101; Cin=1; #10;

    $finish;
end

endmodule
