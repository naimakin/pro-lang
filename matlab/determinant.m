function d = determinant( a )
%UNTÝTLED4 Summary of this function goes here
%   Detailed explanation goes here
n = length(a);
if n==1;
    d=a;
elseif n==2;
    d=a(1)*a(4)-a(3)*a(2);

end

