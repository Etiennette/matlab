%matriz del sistema
clear all
A=round(rand(5,5)*10)

b=round(rand(5,1)*100)
X0=zeros(5,1);X=X0
epsilon=10^(-3);
erro=1;
k=0;
fprintf('k    x(1)   x(2)   x(3)   x(4)   x(5)    error\n')
while (erro>epsilon)
   k=k+1;fprintf('%2d',k)
   
   for i=1:4
      suma=0;
      for j=1:4
         if i~=j
            suma=suma+A(i,j)*X(j);
         end
      end
      X(i)=(b(i)-suma)/A(i,i);fprintf('%5.3f',X(i))
   end
   erro=sqrt(dot(X-X0,X-X0))/sqrt(dot(X,X));fprintf('%2.6f\n',erro)
   X0=X;
   if k>50
      disp('No se alcanzo la convergencia')
   break
end
end