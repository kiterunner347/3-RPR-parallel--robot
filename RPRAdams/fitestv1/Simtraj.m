load('m.mat');
load('invdy.mat');
load('q.mat');
load('irho.mat');

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
% q = [x;y;phi];
% q_dot = zeros(3,length(t));
% q_dot(:,2:end) = (q(:,2:end) - q(:,1:end-1))/delta_t;
% q_dot(:,1) = q_dot(:,2);
% q_dot2 = zeros(3,length(t));
% q_dot2(:,3:end) = (q_dot(:,3:end) - q_dot(:,2:end-1))/delta_t;
% q_dot2(:,1) = q_dot2(:,3);
% q_dot2(:,2) = q_dot2(:,3);
% save q.mat;

%创建时序
scale=1000;
rho=-(rho-806.7669);
q=q*scale;q_dot=q_dot*scale;q_dot2=q_dot2*scale;
Kd=1;Kp=1;
qi = timeseries(q,t');
myrho = timeseries(rho,t');
qd = timeseries(q_dot,t');
qdd = timeseries(q_dot2,t');

% mytau=zeros(3,num);
% for i=1:length(t)
%     J = Jacobi(q(3,i),q(1,i),q(2,i));
%     Q_f = Q(q(3,i),q_dot(3,i),q_dot2(3,i),q_dot2(1,i),q_dot(1,i),q(1,i),q_dot2(2,i),q_dot(2,i),q(2,i));
%     mytau(:,i)= J\Q_f;
% end
% tau = timeseries(mytau,t');