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

len=10;
rho1=linspace(800,700,len);
rho2=linspace(900,950,len);
rho3=linspace(850,800,len);
rho=[rho1;rho2;rho3];
M=moviein(len);

for i=1:len
    [p1 , p2]= rprfkine(rho(:,i),parameter);

    % fprintf('------------------------\n');
    % fprintf('第一种正运动学结果[x;y;phi]：%4.2f \n',p1);
    % fprintf('------------------------\n');
    % fprintf('第二种正运动学结果[x;y;phi]：%4.2f \n',p2);

    % 绘图，给定末端位姿p=[x;y;phi]
    % rprplot(p1,parameter);
    % title('第一种解');
    
    rprplot(p2,parameter);
    M(i)=getframe;% 调用getframe函数生成每个帧
    title('第二种解');
end

% 调用movie函数将电影动画矩阵M(i)播放2次
movie(M,1);
%%
% 逆运动学

% myrho1 = rprikine(p1,parameter);
% myrho2 = rprikine(p2,parameter);
% 
% fprintf('------------------------\n');
% if(norm(rho-myrho1)<1e-3) fprintf('第一种逆运动学结果正确!\n');end
% fprintf('第一种逆运动学结果[rho1;rho2;rho3]：%4.2f \n',myrho1);
% fprintf('------------------------\n');
% if(norm(rho-myrho2)<1e-3) fprintf('第二种逆运动学结果正确!\n');end
% fprintf('第二种逆运动学结果[rho1;rho2;rho3]：%4.2f \n',myrho2);
