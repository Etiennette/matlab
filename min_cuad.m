fid1=fopen('res_mincua.txt ','w');
X=[2.4 2.6 2.8 3.0 3.2 3.4 3.6 3.8 4.0 4.2 4.4 4.6];
Y=[-0.012 -0.19 0.452 3.37 0.764 0.532 1.073 1.286 1.502 1.582 1.993 2.473];
x=[1.0 2.0 2.7];
plot(X,Y);
hold on
XB=mean(X);
YB=mean(Y);
SX=sum(X);
SX2=sum(X.^2);
SXY=sum(X.*Y);
M=((YB*SX)-SXY)/(XB*SX-SX2);
b=YB-XB*M;
Z=M.*x+b;
plot(x,Z,'b:+');
fprintf(fid1, '%9.3f,%9.3f,%9.3f,%9.3f,%9.3f\n',XB,YB,SX,SX2,SXY);
fprintf(fid1, '%9.3f,%9.3f,%9.3f,%9.3f,%9.3f\n',M,b,Z(1),Z(2),Z(3));
fclose(fid1);
