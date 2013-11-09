% x2-Sinx-2 dekleminin k�k�n� xo=2.25 i�in Newton-Rapson yont mi ile
% ek = 0.0001 hassasiyetle bulunuz?

clear all
syms x;
f=x^2-sin(x)-2;   %fonksiyon
Ek=0.0001;         % hata pay�
Et=100;             % dong�ye girmesi i�in sallamasyon bi de�er
a=2.25;             % x0 �n ilk de�eri
b=a;                % b = x0 yani eski x
g=diff(f);          % f nin t�revi

f=inline(f);        % f fonk unu tan�mlama
g=inline(g);        % f fonksnun t�revin tan�mlamak

n=0;            %ad�m say�s�n� hesaplamak 
while Et > Ek
    a=(b-(f(b)/g(b)));            % newton-rapson (naim-ak�n)genel formulu
    Et =abs((a-b)/a);    %hata 0.0001 den kucuk olursa donguden ��k�yor
    b=a ;              %yeni x ��kt�k�a b eski x oluyor hata y� en kucuk yakalayana kadar         
    n=n+1;      %ad�m say�s� sayac�
end
a
n