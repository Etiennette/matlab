X=[0 0.25 0.5 0.75 1.0 ];
Y=[1 1.284 1.6487 2.117 2.7183 ];
plot(X,Y,'r:*' )
Z=polyfit(X,Y,2)
W=polyval(Z,X)
hold on
plot(X,W)
%plot(X,ans)