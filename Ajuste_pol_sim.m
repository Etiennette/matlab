%este método considera que en la
%diagonal principal no hay ceros
A=[1,1,1,56.5;  1,2,4, 78.6; ...
        1,5,25,113];
%para un sistema de dimensiones mxn
x0=input('valor x0 a interpolar: ')

[m,n]=size(A);
for i=1:m-1
   for j=i+1:m
      A(j,:)=A(j,:)-(A(j,i)/A(i,i))*A(i,:)
   end
end
%ACTUALIZACION HACIA ATRAS
    for i=m:-1:2
   for j=i-1:-1:1
      A(j,:)=A(j,:)-(A(j,i)/A(i,i))*A(i,:)
   end
end

for i=1:m
   A(i,:)=A(i,:)./A(i,i)
end

Px0=A(1,n)+ A(2,n)*x0+ A(3,n)*(x0^2) 
%+A(4,5)*x0^3