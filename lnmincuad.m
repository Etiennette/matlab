X=[1 2 3 4 5 ];
Y1=[0.5 1.7 3.4 5.7 8.4];

%numero de datos
n=length(X);
%puntos del pronostico
Y=log(Y1)
%generar matriz de coeficientes
%calculo de coeficientes
SX=sum(X)
SX2=sum(X.^2)

SY=sum(Y)
SYX=sum(Y.*X)

% estructura de A primer renglon 
A(1,1)=n;
A(1,2)=SX;
%2o renglon

A(2,1)=SX;
A(2,2)=SX2;
A
%lado derecho
b(1,1)=SY;
b(1,2)=SYX;
b
%CON ESTOS DATOS RESOLVER EL SISTEMA
B=inv(A);
C=B*b'
%construccion del polinomio
%puntos de la recta ajustada
Dp=exp(C(1,1))+exp(C(2,1).*X)

plot(X,Y1,X,Dp)
grid on
hold on
%pronosticos
x=[1.5 2.5 5];
disp('Pronosticos')
Px=C(1,1)+C(2,1).*x
plot(x,Px,'r:*')
%calculo del error
E=sum((Dp-Y).^2)
