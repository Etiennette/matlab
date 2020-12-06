%matriz del sistema
clear all
A=[10,2,-3;...
	-3,-9,2;...
	-5,5,15 ]

b=[30;-72;-60]
X0=[0;0;0];X=X0
epsilon=10^(-5);
erro=1;
k=0;
fprintf('k     x(1)      x(2)        x(3)           error\n')
while (erro>epsilon)
   k=k+1; fprintf('%2d',k)
   
   for i=1:3
      suma=0;
      for j=1:3
         if i~=j
            suma=suma+A(i,j)*X(j);
         end
      end
      X(i)=(b(i)-suma)/A(i,i);fprintf('%10.6f',X(i))
   
   end
   erro=norm(X-X0);fprintf('%10.6f\n',erro)
   X0=X;
    if k>20
      disp('No se alcanzo la convergencia')
    break
    end
end
X