X=[2.4 2.6 2.8 3.0 3.2 3.4 3.6 3.8 4.0 4.2 4.4 4.6]

 Y=[-0.012 -0.190 0.452 .537 0.640 0.732 1.073 1.286 1.502 1.582 1.993 2.473]

 yb=mean(Y)

 xb=mean(X)

 sx=sum(X)

 sx2=sum(X.^2)

 sxy=sum(X.*Y)

 plot(X,Y)
 m=(yb*sx-sxy)/(xb*sx-sx2)

 b=yb-m*xb

 y1=m.*X+b

 hold on
 plot(X,y1)
 x=1

 y2=m.*x+b

 x=2

 y2=m.*x+b


 x=2.7


 y2=m.*x+b

 x=[1 2 2.7]

 y2=m.*x+b



 plot(x,y2,'r:*')
m =    1.0838


b =   -2.7878


x =     1


y2 =   -1.7039


x =     2


y2 =   -0.6201


x =    2.7000


y2 =    0.1386
