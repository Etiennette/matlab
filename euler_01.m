%M�todo de Euler para resolver
%Ecuaciones diferenciales lineales de 
%1er. orden.
%Se debe definir el lado derecho de la ED
% usando inline(), y dar la condici�n inicial
%as� como el intervalo de tiempo h.
%b)'-20*y+7*exp(-0.5*t)',[0,5],0.1,0.01,0.001,0.0001
%2),'0.1*sqrt(y)+0.4*t.^2',[2,4],2.5,0.01,0.05
%3),'0.2*y*t',[1,1],1.5,0.1,0.05,0.001
%4),'1-t*sin(t)',[0,1],30,0.1,0.05
%5)'t-y',[0,2],1,0.01,0.001,0.0001;y(1)=1.10364.
%6)'t.^2*y/(1+t.^3)',[1,2],1.5;y(1.5)=2.5962.
%7) '-2t-y', [0,-1],0.4;y(0.4)=-0.81096.
clear all
disp('Soluci�n de ED con el m�todo de Euler')
disp('============================')
%Obtenemos la EDO
f=inline(input('De el lado derecho de la ED(entre apostrofos): '))
ti=input('Cu�l es la condici�n inicial[to,y(to)]: ');
tf=input('Cu�l es el tiempo final: ');
h=input('De el valor de h: ');
%n�mero de iteraciones
disp('iter--------t-------------y---------y(tf)')
figure
i=1;
 y(i)=ti(2);
 t(i)=ti(1);
plot(t(i),y(i),'r*')
grid on
hold on
 fprintf('%2.0f , %9.6f  , %9.6f \n',i ,t(1),y(1))
while (t(i)<tf)
   i=i+1;
   yc=(feval(f,t(i-1),y(i-1)));
    y(i)=y(i-1)+h*(feval(f,t(i-1),y(i-1)));
    %ej 4) 
   % y(i)=y(i-1)+h*(feval(f,t(i-1)));
    t(i)=t(i-1)+h;
fprintf('%2.0d , %9.6f , %9.6f  , %9.6f \n',i,t(i),yc,y(i))
end
plot(t,y,'LineWidth',2)

