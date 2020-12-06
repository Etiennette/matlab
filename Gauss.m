%este método considera que en la
%diagonal prrincipal no hay ceros
A=[4,-9,2,5;2,-4,6,3;1,-1,3,4]
%para un sistema de dimensiones mxn
%A=[4,-9,2,1,5;2,-4,2,6,3;1,-1,0.5,3,4;3,0.2,-1,4,1]
[m,n]=size(A)
for i=1:n-1
   for j=i+1:m
      A(j,:)=A(j,:)-(A(j,i)/A(i,i))*A(i,:)
   end
end

X(n-1)=A(m,n)/A(m,n-1)
for i=(n-2):-1:1
    S=0;
   for j=(i+1):(n-1)
      S=S+(A(i,j)*X(j))
   end
   X(i)=(A(i,n)-S)/A(i,i)
end
%    intercambio de renglones
    A=[1,2,3;3 4 5]

    A([1,2],:)=A([2,1],:)
    
    A(2,:)=A(2,:)-(A(2,1)/A(1,1))*A(1,:)
