%matriz del sistema
A=[10,-1,2,0,6;...
	-1,11,-1,3,25;...
	2,-1,10,-1,-11;...
   0,3,-1,8 ,15]
%dividimos entre A(i,i)
[m,n]=size(A)
for i=1:m 
A(i,:)=A(i,:)./A(i,i)
end
%separamos T y c
T=A(:,1:4)
C=A(:,5)
%despejamos  xi
%pasando los términos 
%al lado derecho
T=-1*T
%eliminando los elementos 
%de la diagonal principal
for i=1:m
   T(i,i)=0
end
%definimos los parametros
%de detención
epsilon=10^(-5)
erro=1;
xa=[0; 0; 0; 0];
while (erro>epsilon)
   xk=T*xa+C
   erro=sqrt(dot(xk-xa,xk-xa))./sqrt(dot(xk,xk));
   xa=xk
end
%un sistema de 20x20
tic
A=rand(20,20)*17

C=rand(20,1)*50
[m,n]=size(A)
for i=1:m 
A(i,:)=A(i,:)./A(i,i)
end

T=-A;
for i=1:m
   T(i,i)=0
end

epsilon=10^(-5)
erro=1;
xa=zeros(20,1);
while (erro>epsilon)
   xk=T*xa+C
   erro=sqrt(dot(xk-xa,xk-xa))./sqrt(dot(xk,xk));
   xa=xk
end
toc


