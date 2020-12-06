X=[0 0.25 0.5 0.75 1.0 1.25 1.50 1.75]
Y=[1 1.284 1.6487 2.117 2.7183 3.327 5.201 8.231]
%grafica de los datos originales
 plot (X,Y,'r:*')
hold on
%ajuste de un polinomio de 2 grado
%el vector Z2 contiene los coeficientes 
%del polinomio  a2*x^2+a1*x+a0
 Z2=polyfit(X,Y,2)
%W es el vector del polinomio Z2 evaluado en el vector X
W=polyval(Z2,X)
%ahora graficamos el vector Z2, color negro k y con -
plot(X,W,'LineStyle','-','Color','k')
%a continuacion ajustamos los datos con un polinomio de grado 3
%cuyos coeficientes son:  a3*x^3+xa2*x^2+a1*x+a0
 Z3=polyfit(X,Y,3)
%ahora graficamos el vector Z3, color azul b y con -.
W=polyval(Z3,X)
plot(X,W,'LineStyle','-.','Color','b')
