%f(x) = e(-x)–x(e üzeri-x  -x) denkleminin kökünü Sekant 
%yöntemiyle çözünüz. (x0= 0, x1=1, ?k=0.001)
% Xn+1=(Xn-1*f(Xn)-Xn*f(Xn-1))/(f(Xn)-f(Xn-1))  genel secant

clc
clear all
syms x;                  % x atamalarý için
i=1;a=0;b=1;              % x deðerleri ve adýmsayýsý = i
err=0.001;                 %hata
f = inline(exp(-x)-x);   %fonksiyon tanýmlamasý inline ile
c = (a*f(b)-b*f(a))/(f(b)-f(a));  %secant yöntemi genel formulu(nakn)
while abs(f(c))>err     %hata küçük olana kadar dongu devam
    a = b;              % Xn=b , Xn+1=c olarak secant
    b = c;              %yonteminde her seferinde deðiþen x deðerleri
    c = (a*f(b)-b*f(a))/(f(b)-f(a)); %yeni Xn+1 deðeri
    disp([a f(a) b f(b) c f(c)]);   % ekrana gozükmesi
    i = i + 1;              %adým sayýsýný arttýrma
    if(i == 4)                  %adým sayýsýný sýnýrlama çýkmassan  çýkma
        break;
    end
end
disp(['bulunan kok : ' num2str(c)]); %kökü görüntüleme

