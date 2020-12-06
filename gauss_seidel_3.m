%Metodo Gauss-Seidel
%A matriz del sistema
clear all
A=[10,-1,2,0 ;-1,11,-1,3;2,-1,10,-1;0,3,-1,8];
b=[6,25,-11,15];
%solución inicial
X0=zeros(4,1);X=X0
%error 
epsilon=10^(-5);
erro=1;
%iteración
k=0;
fprintf('k        x(1)          x(2)          x(3)     x(4)         error\n')
%iniciamos iteraciones
while (erro>epsilon)
   k=k+1;fprintf('%2d  ',k)
      for i=1:4
      suma=0;
      for j=1:4
         if i~=j
             %acumulamos suma de coeficientes por variable
            suma=suma+A(i,j)*X(j);
         end
      end
      X(i)=(b(i)-suma)/A(i,i);fprintf('% 8.5f  ',X(i))
   end
   erro=sqrt(dot(X-X0,X-X0))/sqrt(dot(X,X)); fprintf('% 8.6f  \n',erro)
   X0=X;
   if k>20
      disp('No se alcanzo la convergencia')
   break
end
end