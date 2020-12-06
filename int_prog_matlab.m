
%PROGAMACIÓN EN MATLAB
% A LOS COMENTARIOS SE ANTEPONE UN %
%CICLOS FOR Y WHILE
%Volumen de una esfera V=(4/3)*pi*r^3
% variando el radio
for r=1:5
vol=(4/3)*pi*r^3;
display(vol) 
end
% el punto y coma al final hace que no se muestren los resultados
r=0;
while (r<5)
r=r+1 %que pasa si eliminamos esta linea
 vol=(4/3)*pi*r^3;
display([r,vol])
end
% formatos de salida
% por default los números se muestran con 5 dígitos
pi
%lo podemos cambiar  con
format long
pi
%uso de break, no existe goto en Matlab
for i=1:6
	for j=1:20
		disp(i*j)
		if j*i>60 ,break, end
	end
end
%combinado con while 
r=0;
while (r<15)
r=input('teclee el radio(o -1 para terminar): ')
if r<0, break,end
 vol=(4/3)*pi*r^3;
%otro forma de mostrar información en la pantalla
fprintf('Volumen=%7.3f\n',vol)
end
% a veces es necesario ciclos infinitos controlados
x=0;
while 1
x=x+1
if  x>300,break,end
end
%para borra variables
clear x,r,z
% para borra la ventana de comandos
clc
%entrada de datos, dpositado en una variable x
r=input('teclee el radio(o -1 para terminar): ')
%también se usa para variables de caracteres
nom=input('teclee su nombre: ','s' )
%el argumentos indica que la entrada es una cadena
nom=input('teclee su nombre, entre apostrofos: ' )
% salidas formateadas
vol=9.7654;
fprintf('Volumen=%7.3f\n',vol)
%formato cientifíco
vol=909.7654;
fprintf('Volumen=%10.4e\n',vol)
% matrices
x=[0,0.1,0.2,0.3,0.4,0.5];
format compact
%elimina lineas entre salidas
%elemento 3 del vector x
x(3)
se puede incrementar la dimensión
x(7)=0.6
%otra forma de escribir x es
x=0:0.1:0.7
%esta forma es muy usada
x'
%x' es un vector columna
%matrices bidimensionales el ; indica otro renglón
A=[2 3 4;4 5 6]
%hay dos tipos de operaciones: con variables simples y con arreglos
y=0.1:0.1:0.8
X=2.5;
Y=4.7;
z=X+Y
z=X*Y
z=X/Y
%operaciones entre elementos de vectores
Z=x.*y
Z=x./y
% como guardar datos en un archivo
save datos.tmp x y -ascii
% se guardan en formato ascii las variables x e y 
%copia del trabajo con diary on y diary off
%imprimir fecha y cronometraje del tiempo de proceso
clock
fix(clock)
t_0=clock;
%programa...---
t_1=clock;
%tiempo transcurrido
t_1-t_0
% formas de generar matrices
A=zeros(30,30)
O=ones(25,25)
%graficación, hay varias funciones
x=0:0.5:10;
y=sin(x).*exp(-0.4*x);
plot(x,y)
grid on
xlabel ('x');
ylabel('y');
%más facil 
  ezplot('t*cos(t)','t*sin(t)',[0,4*pi])
 ezplot('1/y-log(y)+log(-1+y)+x - 1')
%grafica de un conjunto de valores
x=0:0.5:10;
y=2.*x;
plot(x,y,'r+' )
