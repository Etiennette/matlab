%Interpolacion por dif. divididas
%bloque de entrada de datos
X=[1,2,5,10];
%X=[5,20,40];
FX=[56.5,78.6,113,144.5];
%FX=[113,181,214.5];
m=length(X);
T=zeros(m,m);
disp('Polinomios de Interpolacion por Diferencias Divididas')
x0=input('Valor a interpolar : ')
%calculo de dif. 1er. orden
for i=1:m-1;
T(i,1)=(FX(i+1)-FX(i))/(X(i+1)-X(i));
end
%calculo de dif. ordenes siguientes
for j=2:m-1
    for k=j:m-1
        T(k,j)=(T(k,j-1)-T(k-1,j-1))/(X(k+1)-X(k-j+1));
    end
end
T
%construccion de los pol. de interp.
fprintf('grado  valor interpolado\n')
px1=FX(1)+T(1,1)*(x0-X(1));
fprintf('%d         %8.5f\n',1,px1)
px2=px1+T(2,2)*(x0-X(1))*(x0-X(2));
fprintf('%d         %8.5f\n',2,px2)
px3=px2+T(3,3)*(x0-X(1))*(x0-X(2))*(x0-X(3));
fprintf('%d         %8.5f\n',3,px3)


