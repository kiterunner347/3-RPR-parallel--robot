clear;clc;
close all;

load('m.mat');
load('invdy.mat');
load('q.mat');

%创建时间变量
delta_t = 0.05;
T_total = 5;
t = 0:delta_t:T_total;

%创建轨迹
r = 0.18;
x_c = 0.518;
y_c = 0.876 + r;
x = x_c - r*sin(pi/T_total*t);
y = y_c - r*cos(pi/T_total*t);
phi = -3/180*pi*ones(1,length(t));
num=length(t);

%计算速度，加速度
q = [x;y;phi];
q_dot = zeros(3,length(t));
q_dot(:,2:end) = (q(:,2:end) - q(:,1:end-1))/delta_t;
q_dot(:,1) = q_dot(:,2);
q_dot2 = zeros(3,length(t));
q_dot2(:,3:end) = (q_dot(:,3:end) - q_dot(:,2:end-1))/delta_t;
q_dot2(:,1) = q_dot2(:,3);
q_dot2(:,2) = q_dot2(:,3);
save q.mat;

%创建时序
qi = timeseries(q,t');
qd = timeseries(q_dot,t');
qdd = timeseries(q_dot2,t');
mytau=zeros(3,num);
Ug = zeros(1,num);

for i=1:length(t)
    J = Jacobi(q(3,i),q(1,i),q(2,i));
    Q_f = Q(q(3,i),q_dot(3,i),q_dot2(3,i),q_dot2(1,i),q_dot(1,i),q(1,i),q_dot2(2,i),q_dot(2,i),q(2,i));
    mytau(:,i) = J\Q_f;
    Ug(i) = U(q(3,i),q(1,i),q(2,i));
    %mytau(:,i)= invd(q,q_dot,q_dot2);
end

mytau(3,:) = 2*mytau(3,:);
plot(t,mytau(1,:),'LineWidth',1);
hold on;
plot(t,mytau(2,:),'LineWidth',1);
plot(t,mytau(3,:),'LineWidth',1);
legend('F1','F2','F3');
xlabel('t/[s]');
ylabel('Force/[N]');
title('Force');
grid on;

tau = timeseries(mytau,t');
% %绘轨迹图
% figure;
% plot(x,y,'g','LineWidth',1);
% xlabel('x/[m]');
% ylabel('y/[m]');
% title('traj');
% axis equal;
% grid on;
%%
% %绘制各连杆长度图
% r1 = sqrt((q(1,:) - l1).^2 + q(2,:).^2);
% r2 = sqrt(q(1,:).^2 + q(2,:).^2);
% r3 = sqrt((q(1,:) - a3*cos(q(3,:))).^2 + (q(2,:) - a3*sin(q(3,:))).^2);
% xlswrite('r1.xls',[t',transpose(r1*1000)]);
% xlswrite('r2.xls',[t',transpose(r2*1000)]);
% xlswrite('r3.xls',[t',transpose(r3*1000)]);
% figure;
% plot(t,r1,'LineWidth',1);
% hold on;
% plot(t,r2,'LineWidth',1);
% plot(t,r3,'LineWidth',1);
% legend('r1','r2','r3');
% xlabel('t/[s]');
% ylabel('r/[m]');
% title('杆长随时间变化曲线');
% grid on;
%%
% 绘驱动力图
% figure;
% F = zeros(3,length(t));
% for i = 1:length(t)
%     F(:,i) = invd(q(:,i),q_dot(:,i),q_dot2(:,i));
% end
% F(3,:) = 2*F(3,:);
% plot(t,F(1,:),'LineWidth',1);
% hold on;
% plot(t,F(2,:),'LineWidth',1);
% plot(t,2*F(3,:),'LineWidth',1);
% legend('F1','F2','F3');
% xlabel('t/[s]');
% ylabel('Force/[N]');
% title('Force');
% grid on;
