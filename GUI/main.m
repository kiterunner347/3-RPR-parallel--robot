close all;
clear;clc;
addpath(genpath('.'));
%%
% 输入机器人参数
l0=170;
l1=610;help 
a3=435;
rho_min=840;rho_max=1340;
parameter=[l0;l1;a3;rho_min;rho_max];

% 末端执行器的位置向量p=[x;y;phi]
p1=zeros(3,1);p2=zeros(3,1);
%%
%正运动学
rho=[800;900;850];
[p1 , p2]= rprfkine(rho,parameter);

fprintf('------------------------\n');
fprintf('第一种正运动学结果[x;y;phi]：%4.2f \n',p1);
fprintf('------------------------\n');
fprintf('第二种正运动学结果[x;y;phi]：%4.2f \n',p2);
%%
% 绘图，给定末端位姿p=[x;y;phi]
figure();
ax1=axes;
rprplot(ax1,p1,parameter);
title('第一种解');

figure();
ax2=axes;
rprplot(ax2,p2,parameter);
title('第二种解');

%%
% 逆运动学

myrho1 = rprikine(p1,parameter);
myrho2 = rprikine(p2,parameter);

fprintf('------------------------\n');
if(norm(rho-myrho1)<1e-3) fprintf('第一种逆运动学结果正确!\n');end
fprintf('第一种逆运动学结果[rho1;rho2;rho3]：%4.2f \n',myrho1);
fprintf('------------------------\n');
if(norm(rho-myrho2)<1e-3) fprintf('第二种逆运动学结果正确!\n');end
fprintf('第二种逆运动学结果[rho1;rho2;rho3]：%4.2f \n',myrho2);

%%
% 逆微分运动学,drho=J*dp

J=myjacobian(rho,p2,parameter);
J(3,3)=J(3,3)/l1; % 将雅可比矩阵J归一化
Jac=J;
%%
% 绘制工作空间
limphi=[-20;40]/180*pi;slice_num=100;
wos2D(parameter,limphi);
wos3D(parameter,limphi,slice_num);

%%
% 灵敏度分析

LKI=1/cond(Jac);
fprintf('------------------------\n');
fprintf('该姿态下的灵敏度：%4.2f \n',LKI);

t=1:0.05:5;T_total=t(end);
x_r = 100;
y_r = 175;
x_c = 518;
y_c = 876 + y_r;
x = x_c - x_r*sin(pi/T_total*t);
y = y_c - y_r*cos(pi/T_total*t);
phi = -3/180*pi*ones(1,length(t));
traj=[x',y',phi'];
LKI=[];mycond=[];
for i=1:length(t)
    myrho = rprikine(traj(i,:),parameter);
    J=myjacobian(myrho,traj(i,:),parameter);
    J(3,3)=J(3,3)/l1; % 将雅可比矩阵J归一化
    Jac=J;
    mycond=[mycond,cond(Jac)];
    LKI=[LKI,1/cond(Jac)];
end
figure()
subplot(2,1,1)
plot(t,traj,'--r');
xlabel('t/s');ylabel('x,y,\phi');
title('运动轨迹')
subplot(2,1,2)
plot(t,LKI,'-b');
xlabel('t/s');ylabel('LKI');
title('灵敏度')
rmpath(genpath('.'));