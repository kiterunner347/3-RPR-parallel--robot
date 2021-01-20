%本文件用于实现平面三自由度机器人动力学逆解
%输入为末端位置，速度和加速度，输出为三个驱动力

%系统连杆基本参数
load('m.mat');
g = 9.8;
w = 0*g;

%定义符号变量和符号运算便于求偏微分
syms xs ys phis xds yds phids xdds ydds phidds;

%根据约束条件求r,rd
r1 = sqrt((xs - l1)^2 + ys^2);
r2 = sqrt(xs^2 + ys^2);
r3 = sqrt((xs - a3*cos(phis))^2 + (ys - a3*sin(phis))^2);
rd1 = diff(r1,xs)*xds + diff(r1,ys)*yds + diff(r1,phis)*phids;
rd2 = diff(r2,xs)*xds + diff(r2,ys)*yds + diff(r2,phis)*phids;
rd3 = diff(r3,xs)*xds + diff(r3,ys)*yds + diff(r3,phis)*phids;

%求thetad
thetad1 = (rd1*(xs - l1) - r1*xds)/(r1*ys);
thetad2 = (rd2*xs - r2*xds)/(r2*ys);
c3 = (xs - a3*cos(phis))/r3;
s3 = (ys - a3*sin(phis))/r3;
thetad3 = (rd3*c3 - xds - a3*sin(phis)*phids)/(r3*s3);

%求7根连杆质心速度
vc1 = lc(1)*thetad1;
vc2 = lc(2)*thetad2;
vc3 = lc(3)*thetad3;
vc4 = [xds;yds] - lc(4)/r1^2*[r1*xds-rd1*(xs-l1);r1*yds-rd1*ys];
vc5 = [xds;yds] - lc(5)/r2^2*[r2*xds-rd2*xs;r2*yds-rd2*ys];
vc6 = [rd3*c3-thetad3*s3*(r3-lc(6));rd3*s3+thetad3*c3*(r3-lc(6))];
vc7 = [xds;yds] - phids*(a3 - lc(7))*[-sin(phis);cos(phis)];
v = [vc1 vc2 vc3 norm(vc4) norm(vc5) norm(vc6) norm(vc7)];

%求7根连杆角速度
omega1 = thetad1;
omega2 = thetad2;
omega3 = thetad3;
omega4 = thetad1;
omega5 = thetad2;
omega6 = thetad3;
omega7 = phids;
omega = [omega1 omega2 omega3 omega4 omega5 omega6 omega7];

%求系统动能
M = diag(m);
I = diag(Ic);
K = 1/2*v*M*v' + 1/2*omega*I*omega';

%求7根连杆质心的y坐标
yc1 = lc(1)*ys/r1;
yc2 = lc(2)*ys/r2;
yc3 = lc(3)*(ys-a3*sin(phis))/r3;
yc4 = (r1-lc(4))*ys/r1;
yc5 = (r2-lc(5))*ys/r2;
yc6 = (r3-lc(6))*(ys-a3*sin(phis))/r3;
yc7 = ys-a3*sin(phis)+ lc(7)*sin(phis);
yc = [yc1 yc2 yc3 yc4 yc5 yc6 yc7];

%求系统势能
U = m*g*yc';

%根据拉格朗日第二类方程求驱动力
L = K - U;
%x方向广义力
DLDxd = diff(L,xds);
DLDxdDt = diff(DLDxd,xs)*xds + diff(DLDxd,ys)*yds + diff(DLDxd,phis)*phids + diff(DLDxd,xds)*xdds + diff(DLDxd,yds)*ydds + diff(DLDxd,phids)*phidds;
DLDx = diff(L,xs);
Qx = DLDxdDt - DLDx;
%y方向广义力
DLDyd = diff(L,yds);
DLDydDt = diff(DLDyd,xs)*xds + diff(DLDyd,ys)*yds + diff(DLDyd,phis)*phids + diff(DLDyd,xds)*xdds + diff(DLDyd,yds)*ydds + diff(DLDyd,phids)*phidds;
DLDy = diff(L,ys);
Qy = DLDydDt - DLDy;
%phi方向广义力矩
DLDphid = diff(L,phids);
DLDphidDt = diff(DLDphid,xs)*xds + diff(DLDphid,ys)*yds + diff(DLDphid,phis)*phids + diff(DLDphid,xds)*xdds + diff(DLDphid,yds)*ydds + diff(DLDphid,phids)*phidds;
DLDphi = diff(L,phis);
Qphi = DLDphidDt - DLDphi;
%将广义力变换为驱动力
Dr1Dx = diff(r1,xs);
Dr2Dx = diff(r2,xs);
Dr3Dx = diff(r3,xs);
Dr1Dy = diff(r1,ys);
Dr2Dy = diff(r2,ys);
Dr3Dy = diff(r3,ys);
Dr1Dphi = diff(r1,phis);
Dr2Dphi = diff(r2,phis);
Dr3Dphi = diff(r3,phis);
Jacobi = [Dr1Dx Dr2Dx Dr3Dx;Dr1Dy Dr2Dy Dr3Dy;Dr1Dphi Dr2Dphi Dr3Dphi];
Jacobi = matlabFunction(Jacobi);
%J = Jacobi(q(3),q(1),q(2));
QQ = [Qx;Qy;Qphi];
Q = [Qx;Qy+w;Qphi];
Q = matlabFunction(Q);
%Q_f = Q(q(3),qd(3),qdd(3),qdd(1),qd(1),q(1),qdd(2),qd(2),q(2));
%F = inv(J)*Q_f;
rd1 = matlabFunction(rd1);
rd2 = matlabFunction(rd2);
rd3 = matlabFunction(rd3);
thetad1 = matlabFunction(thetad1);
thetad2 = matlabFunction(thetad2);
thetad3 = matlabFunction(thetad3);
v = matlabFunction(v);
omega = matlabFunction(omega);
yc = matlabFunction(yc);
K = matlabFunction(K);
U = matlabFunction(U);
L = matlabFunction(L);

M=[subs(QQ,[phids,phidds,xdds,xds,ydds,yds],[1e-5,1e-5,1,1e-5,1e-5,1e-5]),...
   subs(QQ,[phids,phidds,xdds,xds,ydds,yds],[1e-5,1e-5,1e-5,1e-5,1,1e-5]),...
   subs(QQ,[phids,phidds,xdds,xds,ydds,yds],[1e-5,1,1e-5,1e-5,1e-5,1e-5])];

C=[subs(QQ,[phids,phidds,xdds,xds,ydds,yds],[0,0,0,1,0,0]),...
   subs(QQ,[phids,phidds,xdds,xds,ydds,yds],[0,0,0,0,0,1]),...
   subs(QQ,[phids,phidds,xdds,xds,ydds,yds],[1,0,0,0,0,0])];

G=subs(QQ,[phids,phidds,xdds,xds,ydds,yds],[0,0,0,0,0,0]);
M=matlabFunction(M);
C=matlabFunction(C);
G=matlabFunction(G);

save('invdy.mat','Jacobi','Q','v','omega','yc','U','K','M','C','G');
