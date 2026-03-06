module rca_4bit (Cin,
    Cout,
    A,
    B,
    S);
 input Cin;
 output Cout;
 input [3:0] A;
 input [3:0] B;
 output [3:0] S;

 wire \FA0.Cout ;
 wire \FA1.Cout ;
 wire \FA2.Cout ;
 wire _09_;
 wire _10_;
 wire _11_;
 wire _12_;
 wire _13_;
 wire _14_;
 wire _15_;
 wire _16_;
 wire _17_;
 wire _18_;
 wire _19_;
 wire _20_;

 sky130_fd_sc_hs__xnor2_1 _41_ (.A(Cin),
    .B(B[0]),
    .Y(_14_));
 sky130_fd_sc_hs__xnor2_1 _42_ (.A(A[0]),
    .B(_14_),
    .Y(_09_));
 sky130_fd_sc_hs__maj3_1 _43_ (.A(Cin),
    .B(A[0]),
    .C(B[0]),
    .X(_15_));
 sky130_fd_sc_hs__xnor2_1 _44_ (.A(A[1]),
    .B(B[1]),
    .Y(_16_));
 sky130_fd_sc_hs__xnor2_1 _45_ (.A(_15_),
    .B(_16_),
    .Y(_10_));
 sky130_fd_sc_hs__maj3_1 _46_ (.A(A[1]),
    .B(B[1]),
    .C(_15_),
    .X(_17_));
 sky130_fd_sc_hs__xnor2_1 _47_ (.A(A[2]),
    .B(B[2]),
    .Y(_18_));
 sky130_fd_sc_hs__xnor2_1 _48_ (.A(_17_),
    .B(_18_),
    .Y(_11_));
 sky130_fd_sc_hs__maj3_1 _49_ (.A(A[2]),
    .B(B[2]),
    .C(_17_),
    .X(_19_));
 sky130_fd_sc_hs__xnor2_1 _50_ (.A(A[3]),
    .B(B[3]),
    .Y(_20_));
 sky130_fd_sc_hs__xnor2_1 _51_ (.A(_19_),
    .B(_20_),
    .Y(_13_));
 sky130_fd_sc_hs__maj3_1 _52_ (.A(A[3]),
    .B(B[3]),
    .C(_19_),
    .X(_12_));
 sky130_fd_sc_hs__tapvpwrvgnd_1 TAP_2 ();
 sky130_fd_sc_hs__tapvpwrvgnd_1 TAP_1 ();
 sky130_fd_sc_hs__tapvpwrvgnd_1 TAP_0 ();
 assign S[0] = _09_;
 assign S[1] = _10_;
 assign S[2] = _11_;
 assign Cout = _12_;
 assign S[3] = _13_;
endmodule
