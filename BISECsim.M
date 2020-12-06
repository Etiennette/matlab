
tol=0.00001; 
it_lim=50;
fprintf('===metodo de biseccion===\n\n' );
a=input('Cual es el extremo izquierdo a:  ');
b=input('Cual es el extremo derecho b (b>a):  ');

%no. de iteraciones
n=0;
y=inline(input('Cual es la funcion escribir entre apostrofos '));
%evaluamos la funcion en a y b
ya=y(a);
yb=y(b);
%condicion inicial
if(ya*yb > 0)
	fprintf('  \n\n Parar debido a que fa*fb  > 0   \n' );
    fprintf( 'Cambiar extremos  a o b \n ' );
else
fprintf(' It.    a	           	 b	         c  	     f(a)          f(c)             \n' );
%ciclo para hacer las iteraciones   
while 1
    %se incrementa el numero de iteraciones
		n=n+1;
        %calculamos c
        c=(a+b)/2; 
       %evaluamos la funcion en a y c 
         ya=y(a);
         yc=y(c);
        fprintf('%2.0d   %10.6f  %10.6f  ',n,a ,b)
        fprintf( '%10.6f  %8.6f  %8.6f \n ',c,ya,yc)
		%verificamos si c y a estan mas cerca de
        %una cienmilesima
		if abs((c-a)/c )<=tol
    		 fprintf( 'Se satisface la tolerancia \n ' ); 
              break
        end
        %verificamos si no se han rebasado el limite
        %de iteraciones
        if( n>it_lim)
			fprintf( 'Se excedio el numero de iteraciones \n ' );
			break
        end	
        %hacemos las comparaciones para
        %determinar que parte del intervalo
        %vamos a eliminar
		if (ya*yc < 0)
			b=c;   
		else
			a=c;
        end
       
        
    end
	 fprintf( 'El resultado final es: raiz=%12.9f \n ', c );
end	

