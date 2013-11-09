clear all

x = 2.0;           % ilk tahmin
Es = 0.0000001;    %tolorance  
Et = 1000;         % rondomy lorge relclative approximate error
xold = x;
n = 0 ;           %tekrarlama sayýsý

while Et > Es
    x=((1-x*((2.7)^-x))^(1/3)) ;                     %x =(x+1)^(1/3);
    Et =abs(x-xold); 
    xold = x ;
    n = n + 1;
end

x
n
