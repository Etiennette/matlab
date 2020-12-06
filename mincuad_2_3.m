X=[3,4,5,7,8,9,11,12];
Y=[1.6,3.6,4,3.4,2.5,2.8,3.8,4.6];
%X=[0.75,2,3,4,6,8,9];
%Y=[1.2,1.95,2,2.4,2.4,2.7,2.5];
%numero de datos
n=length(X);
%generar matriz de coeficientes
%calculo de coeficientes
SX=sum(X);
SX2=sum(X.^2);
SX3=sum(X.^3);
SX4=sum(X.^4);
SX5=sum(X.^5);
SX6=sum(X.^6);
SY=sum(Y);
SYX=sum(Y.*X);
SYX2=sum(Y.*(X.^2));
SYX3=sum(Y.*(X.^3));
SYX4=sum(Y.*(X.^4));
SYX5=sum(Y.*(X.^5));
% estructura de A primer renglon n=3
A(1,1)=n;
A(1,2)=SX;
A(1,3)=SX2;
A(1,4)=SX3;
%2o renglon
A(2,1)=SX;
A(2,2)=SX2;
A(2,3)=SX3;
A(2,4)=SX4;
%3er renglon
A(3,1)=SX2;
A(3,2)=SX3;
A(3,3)=SX4;
A(3,4)=SX5;
%4o renglon
A(4,1)=SX3;
A(4,2)=SX4;
A(4,3)=SX5;
A(4,4)=SX6;
%lado derecho
b(1,1)=SY;
b(1,2)=SYX;
b(1,3)=SYX2;
b(1,4)=SYX3;
%CON ESTOS DATOS RESOLVER EL SISTEMA
%para n=2
B2=inv(A(1:3,1:3));
C2=B2*b(1:3)';
%para n=3
B3=inv(A);
C3=B3*b'
%construccion del polinomio ajustado
Dx3=C3(1,1)+C3(2,1).*X+C3(3,1)*(X.^2)+C3(4,1)*(X.^3)
Dx2=C2(1,1)+C2(2,1).*X+C2(3,1)*(X.^2)
%plot(X,Y,X,Dx2)
plot(X,Y,X,Dx3)
grid on
hold on
%puntos del pronostico
disp('Pronosticos')
x=[3.5];
P3x=C3(1,1)+C3(2,1).*x+C3(3,1)*(x.^2)+C3(4,1)*(x.^3);

P2x=C2(1,1)+C2(2,1).*x+C2(3,1)*(x.^2)
%plot(x,Dx3,'k')
%calculo del error
E2=sum((Y-Dx2).^2)
S2yx=sqrt(E2/(n-2))
E3=sum((Y-Dx3).^2)
S3yx=sqrt(E3/(n-2))

