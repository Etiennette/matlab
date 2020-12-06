%interpolacion de Lagrange
% la funcion es llamada asi
%yi=lagrange(x,y,xi)
%calcula los valores interpolados para xi
function yi=lagrange(x,y,xi)
%cuantos valores va a regresar
yi=zeros(size(xi));
%numero de datos
np1=length(y);

for i=1:np1   
    z=ones(size(xi));
    %se calculan los cocientes (xi-x(j))/(x(i)-x(j))
    for j=1:np1
        if i~=j, z=z.*(xi-x(j))/(x(i)-x(j)); end
    end
 %  valores calculados de la interpolacion
    yi=yi+z*y(i);
end
 return