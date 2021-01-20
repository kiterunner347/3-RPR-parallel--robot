function traj = trajectory(height,weight,parameter,t)
% 生成运动轨迹

num=length(t);
T_total=t(end);

x_r = 100;
y_r = height;
x_c = 518;
y_c = 876 + y_r;
x = x_c - x_r*sin(pi/T_total*t);
y = y_c - y_r*cos(pi/T_total*t);
phi = -3/180*pi*ones(1,length(t));
traj=[x',y',phi'];
% traj=ones(num,1)*[350,950,0];
% traj(:,1)=traj(:,1)+transpose(linspace(1,100,num));
% traj(:,2)=traj(:,2)+transpose(linspace(1,50,num));
% traj(:,3)=traj(:,3)+transpose(linspace(1,0.5,num));
end

