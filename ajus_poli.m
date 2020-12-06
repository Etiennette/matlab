fid1=fopen('resajusp.txt','w')
X=[0.0 2.5 5.0 7.5 10 12.5 15.0];
Y=[10 4.97 2.47  1.22 0.61 0.3 0.14 ];
x=[3 6 11];
plot(X,Y,'r:*' )
Z=polyfit(X,Y,4)
fprintf(fid1, '%9.3f,%9.3f,%9.3f,%9.3f,%9.3f\n',Z(1),Z(2),Z(3),Z(4),Z(5));
W=polyval(Z,X);
W1=polyval(Z,x);
fprintf(fid1, '%9.3f,%9.3f,%9.3f\n',W1(1),W1(2),W1(3));
hold on
plot(X,W)
fclose(fid1);
%plot(X,ans)