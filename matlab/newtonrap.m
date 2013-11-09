% x2-Sinx-2 dekleminin kökünü xo=2.25 için Newton-Rapson yont mi ile
% ek = 0.0001 hassasiyetle bulunuz?

clear all
syms x;
f=x^2-sin(x)-2;   %fonksiyon
Ek=0.0001;         % hata payý
Et=100;             % dongüye girmesi için sallamasyon bi deðer
a=2.25;             % x0 ýn ilk deðeri
b=a;                % b = x0 yani eski x
g=diff(f);          % f nin türevi

f=inline(f);        % f fonk unu tanýmlama
g=inline(g);        % f fonksnun türevin tanýmlamak

n=0;            %adým sayýsýný hesaplamak 
while Et > Ek
    a=(b-(f(b)/g(b)));            % newton-rapson (naim-akýn)genel formulu
    Et =abs((a-b)/a);    %hata 0.0001 den kucuk olursa donguden çýkýyor
    b=a ;              %yeni x çýktýkça b eski x oluyor hata yý en kucuk yakalayana kadar         
    n=n+1;      %adým sayýsý sayacý
end
a
n