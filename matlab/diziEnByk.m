clc
clear all

N=[3 102 9 5 87 74 6 98 2 12];

% Eleman say�s�n� bulma
k=0;
for i=N
k=k+1;
end

for j=1:k
if j==1
buyuk=N(1);
elseif N(j)>buyuk
buyuk=N(j);
v=j;
end
end

for q=1:k
if q==1
kucuk=N(1);
elseif N(q)<kucuk
kucuk=N(q);
end
end

fprintf('En b�y�k say�m�z %g dir. \n',buyuk)
fprintf('En b�y�k say�m�z %g dir. \n',kucuk)