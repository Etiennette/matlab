fid1=fopen('respolsim.txt','w');
A=[1 0 0 0;1 1 1 1;1 2 4 8 ;1 2.5 6.25 15.625 ];
X=[A(:,2)]
b=[1.4 ;0.6;1.0;0.65 ];
plot(X,b)
hold on
B=inv(A)
C=B*b
P=[ C(4) C(3) C(2) C(1)]
fprintf(fid1,'%9.3f,%9.3f,%9.3f,%9.3f\n',C(4) ,C(3) ,C(2) ,C(1));
x=[1.0 2.0 2.7]

W=polyval(P,x)
fprintf(fid1,'%9.3f,%9.3f,%9.3f,%9.3f\n',W(1) ,W(2) ,W(3));
plot(x,W,'r:*' )
fclose(fid1);