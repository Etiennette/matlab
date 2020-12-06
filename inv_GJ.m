A=[3,1,3,0,0,1;-1,3,2,0,1,0;2,1,3,1,0,0]
[m,n]=size(A)
for i=1:(m-1)
for j=(i+1):m
A(j,:)=A(j,:)-(A(j,i)/A(i,i))*A(i,:)
end 
end

for i=m:-1:2
for j=(i-1):-1:1
A(j,:)=A(j,:)-(A(j,i)/A(i,i))*A(i,:)
end 
end
%descomposicion LU
A=[4,-9,2;2,-4,6;1,-1,3]
b=[5,3,4]
[L,U]=lu(A)
y=inv(L)*b'
x=inv(U)*y