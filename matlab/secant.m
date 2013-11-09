%f(x) = e(-x)�x(e �zeri-x  -x) denkleminin k�k�n� Sekant 
%y�ntemiyle ��z�n�z. (x0= 0, x1=1, ?k=0.001)
% Xn+1=(Xn-1*f(Xn)-Xn*f(Xn-1))/(f(Xn)-f(Xn-1))  genel secant

clc
clear all
syms x;                  % x atamalar� i�in
i=1;a=0;b=1;              % x de�erleri ve ad�msay�s� = i
err=0.001;                 %hata
f = inline(exp(-x)-x);   %fonksiyon tan�mlamas� inline ile
c = (a*f(b)-b*f(a))/(f(b)-f(a));  %secant y�ntemi genel formulu(nakn)
while abs(f(c))>err     %hata k���k olana kadar dongu devam
    a = b;              % Xn=b , Xn+1=c olarak secant
    b = c;              %yonteminde her seferinde de�i�en x de�erleri
    c = (a*f(b)-b*f(a))/(f(b)-f(a)); %yeni Xn+1 de�eri
    disp([a f(a) b f(b) c f(c)]);   % ekrana goz�kmesi
    i = i + 1;              %ad�m say�s�n� artt�rma
    if(i == 4)                  %ad�m say�s�n� s�n�rlama ��kmassan  ��kma
        break;
    end
end
disp(['bulunan kok : ' num2str(c)]); %k�k� g�r�nt�leme

