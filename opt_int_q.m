%Optimizacion por interpolacion
%Cuadratica
%El metodo se basa en que cerca de donde
%hay un extremo, maximo o minimo
%la funcion se puede aproximar por una fucnion 
%polinomial de 2o orden.
%Dado que una parabola esta definida por tres puntos 
%se requieren 3 puntos para hacer la interpolacion
%El polinomio es 
%x3=(f(x0)(x1^2-x2^2)+f(x1)(x2^2-x0^2)+f(x2)(x0^2-x1^2))/
%2(f(x0)(x1-x2)+f(x1)(x2-x0)+f(x2)(x0-x1))
%fx(x) = 2*sin(x)-x^2/10
clear all
disp('Metodo de Optimizacion de por Int. Cuadratica')
disp('==================================')
%condiciones iniciales
fx=inline(input('Funcion a optimizar: '))
x=input('Cuales son los valores iniciales de busqueda: ' );
x0=x(1);
x1=(x(1)+x(2))/2;
x2=x(2);
cont=1;
tol=10^(-6);
n=15;
%inicio del proceso

fprintf('   It.     x0       f(x0)         x1      f(x1)         x2         f(x2)    x3   f(x3) \n  ' );

while(cont<=n)

 f1=fx(x0)*(x1^2-x2^2)+fx(x1)*(x2^2-x0^2)+fx(x2)*(x0^2-x1^2);
 f2=2*(fx(x0)*(x1-x2)+fx(x1)*(x2-x0)+fx(x2)*(x0-x1));
x3=f1/f2;

fprintf('%3.0f , %8.5f , %8.6f , %8.5f , %8.5f , %8.5f , %8.5f , %8.5f , %8.5f \n',...
    cont,x0,fx(x0),x1,fx(x1),x2,fx(x2),x3,fx(x3) );
if abs(fx(x3)-fx(x1))<tol
    break;
end
if (x3>x1)
    x0=x1;
    x1=x3;
    else
    x2=x1;
    x1=x3;
end    

cont=cont+1;
end
