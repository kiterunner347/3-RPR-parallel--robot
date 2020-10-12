close all;
clear;clc;
addpath(genpath('.'));
%%
% 输入机器人参数
l0=220;
l1=620;
a3=175;
rho_min=736;rho_max=1236;
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
rprplot(p1,parameter);
title('第一种解');

rprplot(p2,parameter);
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

J=jacobian(rho,p2,parameter);
Jac=J(3,3)/l1; % 将雅可比矩阵J归一化

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

rmpath(genpath('.'));