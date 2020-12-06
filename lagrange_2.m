%interpolacion de Lagrange
% la funcion es llamada asi
%yi=lagrange(x,y,xi)
%calcula los valores interpolados para xi
function yi=lagrange_2
%cuantos valores va a regresar
P=input('Escriba el arreglo de los puntos a interpolar use [ ]')
yi=zeros(length(xi));
%numero de datos
np1=length(P(:,1));

for i=1:np1   
    z=ones(length(xi));
    %se calculan los cocientes (xi-x(j))/(x(i)-x(j))
    for j=1:np1
        if i~=j, z=z.*(xi-P(j,1))/(P(i,1)-P(j,1)); end
    end
 %  valores calculados de la interpolacion
    yi=yi+z*y(i);
end
return