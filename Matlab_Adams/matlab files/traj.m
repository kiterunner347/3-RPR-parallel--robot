clear;clc;
close all;

%%

%创建时间变量
t = 0:0.01:1;
delta_t = 0.01;
load('invdy.mat')
%创建轨迹
x_c = 0.36;
y_c = 1.27;
r = 0.27;
x = x_c - r*sin(pi*t);
y = y_c - r*cos(pi*t);
phi = 10/180*pi*ones(1,length(t));

%计算速度，加速度
q = [x;y;phi];
q_dot = zeros(3,length(t));
q_dot(:,2:end) = (q(:,2:end) - q(:,1:end-1))/delta_t;
q_dot(:,1) = q_dot(:,2);
q_dot2 = zeros(3,length(t));
q_dot2(:,3:end) = (q_dot(:,3:end) - q_dot(:,2:end-1))/delta_t;
q_dot2(:,1) = q_dot2(:,3);
q_dot2(:,2) = q_dot2(:,3);
save ('q.mat','q','q_dot','q_dot2');

%创建时序
qi = timeseries(q,t');
qd = timeseries(q_dot,t');
qdd = timeseries(q_dot2,t');

%绘轨迹图
figure;
plot(x,y,'g','LineWidth',1);
xlabel('x/[m]');
ylabel('y/[m]');
title('traj');
axis equal;
grid on;

%绘驱动力图
% figure;
% F = zeros(3,length(t));
% for i = 1:length(t)
%     F(:,i) = invd(q(:,i),q_dot(:,i),q_dot2(:,i));
% end
% plot(t,F(1,:),'LineWidth',1);
% hold on;
% plot(t,F(2,:),'LineWidth',1);
% plot(t,F(3,:),'LineWidth',1);
% legend('F1','F2','F3');
% xlabel('t/[s]');
% ylabel('Force/[N]');
% title('Force');
% grid on;

%%
Controls_Plant_2