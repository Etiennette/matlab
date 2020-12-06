A=[1 1 1 ;1 5 25 ;1 20 400 ]
b=[56.5 ;113;181 ]
B=inv(A)
C=B*b
[m,n]=size(C)
for i=1:m
   P(m-(i-1))=C(i);
   end
x=2
W=polyval(P,x)
%c(1) corresponde a x^n