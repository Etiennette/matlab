%Optimizacion
%Metodo de Newton
%La funcion a optimizar es f(x)
% asi que ahora, fx=(fx'/fx'')
clear all
disp('Metodo de Optimizacion de Newton')
disp('==========================')
%condiciones iniciales
fx=inline(input('Funcion a optimizar: '))
x0=input('Cual es el valor inicial de busqueda: ' );
n=input('Cuantas iteraciones: ' );
tol=0.00001;
cont=1;
%inicio del proceso
xn=x0;
fprintf('   It.        xn               fx(xn) \n  ' );

while(cont<=n)
y1=xn-fx( xn);
fprintf('%3.0f , %10.6f , %10.6f \n',cont,xn,fx(xn) );
if (abs(y1-xn)<=tol)  break
end
xn=y1;
cont=cont+1;
end
