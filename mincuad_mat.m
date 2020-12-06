X=[0 1 2 3 4 5];
Y=[ 2.1 7.7  13.6 27.2 40.9 61.1];
n0=input('grado del polinomio a ajustar: ')
%numero de datos
n=length(X);
%puntos del pronostico
x=[1.5 2.5 5];
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
A(2,1)=A(1,2);
A(2,2)=A(1,3);
A(2,3)=A(1,4);
A(2,4)=SX4;
%3er renglon
A(3,1)=A(2,2);
A(3,2)=A(2,3);
A(3,3)=A(2,4);
A(3,4)=SX5;
%4o renglon
A(4,1)=A(3,2);
A(4,2)=A(3,3);
A(4,3)=A(3,4);
A(4,4)=SX6;
%lado derecho
b(1,1)=SY;
b(1,2)=SYX;
b(1,3)=SYX2;
b(1,4)=SYX3;
%CON ESTOS DATOS RESOLVER EL SISTEMA
B=inv(A);
C=B*b'
%construccion del polinomio ajustado
Dx=C(1,1)+C(2,1).*X+C(3,1)*(X.^2)+C(4,1)*(X.^3)
%puntos del pronostico
disp('Pronosticos')
x=[1.5 2.5 5];
Px=C(1,1)+C(2,1)*x+C(3,1)*(x.^2)+C(4,1)*(x.^3)
plot(X,Y,X,Dx)
grid on
hold on
plot(x,Px,'r:*')
%calculo del error
E=sum((Y-Dx).^2)
Syx=sqrt(E/(n-2))

