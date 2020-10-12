function rprplot(p,parameter)
% 3-RPR绘图函数，p为末端执行器位姿，parameter为机器人参数
l0=220;l1=620;
a3=175;rho_min=736;rho_max=1236;

parameter=[l0;l1;a3;rho_min;rho_max];
l0=parameter(1);l1=parameter(2);
a3=parameter(3);rho_min=parameter(4);rho_max=parameter(5);

% 原点O1，固定点F1，动点P，A3
radius=20;pointnum=100;
A3=[p(1)-cos(p(3))*a3,p(2)-sin(p(3))*a3];
figure;
axis equal;
hold on;
filledCircle([0,0],radius,pointnum,'r'); % 原点O1
filledCircle([l1,0],radius,pointnum,'r'); % 固定点F1
filledCircle(p(1:2)',radius,pointnum,'r'); % 动点P
filledCircle(A3,radius,pointnum,'r'); % 动点A3

%直线O1F1,F1P,PO1,O1A3,A3P
plot([0,l1],[0,0],'k','linewidth',2);
plot([l1,p(1),0,A3(1)],[0,p(2),0,A3(2)],'g','linewidth',1.5);
text((l1+p(1))/2,(0+p(2))/2,'Limb1','horiz','center');
text(p(1)/2,p(2)/2,'Limb2','horiz','center');
text(A3(1)/2,A3(2)/2,'Limb3','horiz','center');
plot([A3(1),p(1)],[A3(2),p(2)],'b','linewidth',3);

xlabel('x');ylabel('y');

end

