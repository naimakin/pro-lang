clc
clear all
% AX = B  => A.A^-1.X = B.A^-1  => I.X = B.A^-1 =>  X = B.A^-1

A = [5,-3,1;3,3,-5;4,4,-1];
B = [-1,5,-9]';

X = inv(A)*B 