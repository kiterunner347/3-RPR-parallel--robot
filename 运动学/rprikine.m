function myrho = rprikine(p,parameter)
%3-RPR机器人逆运动学求解，p为末端执行器位姿，parameter为机器人参数
%读取parameter中的参数

l0=parameter(1);l1=parameter(2);
a3=parameter(3);rho_min=parameter(4);rho_max=parameter(5);

%开始逆运动学计算
myrho=zeros(3,1);x=p(1);y=p(2);
myrho(1)=sqrt((x-l1)^2+y^2);
myrho(2)=sqrt(x^2+y^2);
myrho(3)=sqrt((x-a3*cos(p(3)))^2+(y-a3*sin(p(3)))^2);

end

