A=[1 1 1 ;1 5 25 ;1 20 400  ]
X=[A(:,2)]
b=[56.5 ;113;181 ]
plot(X,b)
hold on
B=inv(A)
C=B*b
P=[C(3) C(2) C(1)]
x=[2 12 15 17]

W=polyval(P,x)
plot(x,W,'r:*' )
