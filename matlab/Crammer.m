clc
clear all

X=[4,-4,-3;2,-2,7;-1,2,-3];
Y=[-17;6;5];

X1 = X;
X1(:,1) = Y;
X2 = X;
X2(:,2) = Y;
X3 = X;
X3(:,3) = Y ;

Z=det(X);
Z1=det(X1);
Z2=det(X2);
Z3=det(X3);

X(1)=Z1/Z;
X(2)=Z2/Z;
X(3)=Z3/Z