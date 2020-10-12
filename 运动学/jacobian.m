function J = jacobian(rho,p,parameter)
%3-RPR机器人逆微分运动学求解，p为末端执行器位姿，parameter为机器人参数
%读取parameter中的参数

l0=parameter(1);l1=parameter(2);
a3=parameter(3);rho_min=parameter(4);rho_max=parameter(5);
x=p(1);y=p(2);phi=p(3);

%计算角度theta
theta=zeros(3,1);
theta(1)=acos((rho(1)^2+l1^2-rho(2)^2)/(2*l1*rho(1)));
theta(2)=acos((rho(2)^2+l1^2-rho(1)^2)/(2*l1*rho(2)));
theta(3)=atan((y-a3*sin(phi))/(x-a3*cos(phi)));

%计算雅可比矩阵
J=zeros(3);
J(1:3,1)=cos(theta);J(1:3,1)=sin(theta);
J(3,3)=a3*sin(phi-theta(3));


end
