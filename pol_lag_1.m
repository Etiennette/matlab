
x=[2,	5,	10,	20];
y=[78.6,	113,	144.5,	181];

X=[7,2]
%polinomio de 1er grado
%P1=(X-x(2))/(x(1)-x(2))*y(1)+(X-x(1))/(x(2)-x(1))*y(2)
%polinomio de 2o grado
%P2=((X-x(2)).*(X-x(3)))/((x(1)-x(2))*(x(1)-x(3)))*y(1)+...
   %    ((X-x(1)).*(X-x(3)))/((x(2)-x(1))*(x(2)-x(3)))*y(2)+...
     %  ((X-x(1)).*(X-x(2)))/((x(3)-x(1))*(x(3)-x(2)))*y(3)
   P3=y(1)*((X-x(2)).*(X-x(3)).*(X-x(4)))/((x(1)-x(2)).*(x(1)-x(3)).*(x(1)-x(4)))+...
       y(2)*((X-x(1)).*(X-x(3)).*(X-x(4)))/((x(2)-x(1)).*(x(2)-x(3)).*(x(2)-x(4)))+...
       y(3)*((X-x(1)).*(X-x(2)).*(X-x(4)))/((x(3)-x(1)).*(x(3)-x(2)).*(x(3)-x(4)))+...
       y(4)*((X-x(1)).*(X-x(2)).*(X-x(3)))/((x(4)-x(1)).*(x(4)-x(2)).*(x(4)-x(3)))



