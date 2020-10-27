function [p1,p2] = rprfkine(rho,parameter)
% 3-RPR正运动学,parameter为机器人参数，rho为机器人输入
%读取parameter中的参数

l0=parameter(1);l1=parameter(2);
a3=parameter(3);rho_min=parameter(4);rho_max=parameter(5);

%开始正运动学计算
x=(l1^2+rho(2)^2-rho(1)^2)/2/l1;
y=sqrt(rho(2)^2-x^2);

%m为计算的中间变量
m=(a3^2+rho(2)^2-rho(3)^2)/2/a3;
n=[(y+sqrt(rho(2)^2-m^2))/(m+x) ; 
   (y-sqrt(rho(2)^2-m^2))/(m+x) ];
phi=2*atan(n);
phi(find(phi<-pi))=[];
phi(find(phi>pi))=[];

p1=[x;y;phi(1)];
p2=[x;y;phi(2)];

end

