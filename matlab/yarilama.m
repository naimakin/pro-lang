%x0=0.5, x1=1.5 tahmin edilen f(x) = x3 – 6x2 +13.5x- 9 fks.nun
% kökünü ?k=0.001 hassasiyetle ikiye bölme yöntemiyle bulunuz. 

clear all
clc
syms x;

f=inline(x^3-6*x^2+13.5*x-9);
a=0.5;
c=1.5;
err=0.001;
while abs(b) > err
    b=(c+a)/2;
    if f(a)*f(b)<0
        c=b;
    else
         a=b;
    end
    disp(b);
end