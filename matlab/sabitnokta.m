%SABİT NOKTA İTERASYONU

% f(x) = x*e^-x+x^3+1  denkleminin x0=2 kokü bilindiğine göre ɛ=0.0000001 hassasiyetle basit iterasyon ile   % bulunuz?,x=g(x) ifadesine göre g(x)=((1-x*e^-x)^(1/3)) denklemi 

% aşagıdaki komut satırı kodlaması ile ile g'(2)<1 çıktığı iterasyon bu denklem  ile sağlanır


>> syms x
>> y=(1-x*(2.7)^-x)^(1/3)

y = (1 - x/(27/10)^x)^(1/3)
 
>> diff(y)
 
ans =
 
-(1/(27/10)^x - (x*log(27/10))/(27/10)^x)/(3*(1 - x/(27/10)^x)^(2/3))
 
>> -(1/(27/10)^2 - (2*log(27/10))/(27/10)^2)/(3*(1 - 2/(27/10)^2)^(2/3))

ans =

    0.0559


%  g'(2)=0.059 < 1 koşulu sağlandığından  g(x)=((1-x*e^-x)^(1/3))  denklemi sabit nokta iterasyon ile %      %   matlab kodu


clear all
 
x = 2.0;           % ilk tahmin
Es = 0.0000001;    % hata toloransı  
Et = 1000;         % rasgele döngüye girmesi için verilen sayı 
xold = x;	 
n = 0 ;            %tekrarlama sayısı
 
while Et > Es		  % hata toleransını x lerin farkının mutlak değerinden küçük olana kadar dongü ye
    x ==(1-x*(2.7)^-x)^(1/3);  % devam ettirilir 
    Et =abs(x-xold); 
    xold = x ;
    n = n + 1;          % iterasyon sayısını dongüde arttır
end
 
x	% kok ve iterasyon sayısını görüntüle 
n
plot(x)   % kok grafiği de elde edilebir çıkan sonuçlar aşağıdadır




x =0.8986
x = 0.8581
x =    0.8591
x =  0.8591
x =  0.8591
x = 0.8591
x =  0.8591
n = 6















