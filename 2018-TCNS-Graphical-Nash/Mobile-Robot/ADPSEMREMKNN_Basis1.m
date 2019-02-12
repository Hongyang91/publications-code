function [sig1,sig1GRe1,sig1GRx1,L1]=ADPSEMREMKNN_Basis1(Z)
%#codegen
z1=Z(1);z2=Z(2);z3=Z(3);z4=Z(4);z5=Z(5);z6=Z(6);
sig1=[z1^2 ; z1*z2 ; z1*z3 ; z1*z4 ; z1*z5 ; z1*z6 ; z2^2 ; z2*z3 ; z2*z4 ; z2*z5 ; z2*z6 ; z3^2 ; z3*z4 ; z3*z5 ; z3*z6];
sig_p=[...
    [ 2*z1,    0,    0,  0,  0,  0]
    [   z2,   z1,    0,  0,  0,  0]
    [   z3,    0,   z1,  0,  0,  0]
    [   z4,    0,    0, z1,  0,  0]
    [   z5,    0,    0,  0, z1,  0]
    [   z6,    0,    0,  0,  0, z1]
    [    0, 2*z2,    0,  0,  0,  0]
    [    0,   z3,   z2,  0,  0,  0]
    [    0,   z4,    0, z2,  0,  0]
    [    0,   z5,    0,  0, z2,  0]
%     [    0,   z6,    0,  0,  0, z2]
    [    0,    0, 2*z3,  0,  0,  0]
    [    0,    0,   z4, z3,  0,  0]
    [    0,    0,   z5,  0, z3,  0]
    [    0,    0,   z6,  0,  0, z3]];
L1=size(sig_p,1);

sig1GRe1=sig_p(:,1:3);
sig1GRx1=sig_p(:,4:end);
end