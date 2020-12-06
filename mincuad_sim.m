%X=[1	2	5	10	20	30];
%Y=[56.5	78.6	113	144.5	181	205];
function mincuad_sim(X,Y,X1,Y1)
%numero de datos
n=length(X);
%puntos del pronostico
%generar matriz de coeficientes
%calculo de coeficientes
SX=sum(X);
SX2=sum(X.^2);

SY=sum(Y);
SYX=sum(Y.*X);

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
Dp=C(1,1)+C(2,1).*X;
plot(X,Dp,'LineWidth',2)
grid on
hold on
%pronosticos
%x=[1.5 2.5 5];
%disp('Pronosticos')
%Px=C(1,1)+C(2,1).*x
%plot(x,Px,'r:*')
%calculo del error
%E=sum((Dp-Y).^2)
%Syx=sqrt(E/(n-2))
n1=length(Y1);
%puntos del pronostico
%generar matriz de coeficientes
%calculo de coeficientes
SX1=sum(Y1);
SX12=sum(Y1.^2);

SY1=sum(X1);
SYX1=sum(Y1.*X1);

% estructura de A primer renglon 
A1(1,1)=n1;
A1(1,2)=SX1;
%2o renglon

A1(2,1)=SX1;
A1(2,2)=SX12;
A1
%lado derecho
b1(1,1)=SY1;
b1(1,2)=SYX;
b1
%CON ESTOS DATOS RESOLVER EL SISTEMA
B1=inv(A1);
C1=B1*b1'
%construccion del polinomio
%puntos de la recta ajustada
D1p=C1(1,1)+C1(2,1).*X1
plot(X1,D1p,'LineWidth',2,'Color','r')

