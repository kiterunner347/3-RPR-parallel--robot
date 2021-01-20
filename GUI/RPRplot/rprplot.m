function rprplot(appaxis,p,parameter)
% 3-RPR绘图函数，p为末端执行器位姿，parameter为机器人参数

l0=parameter(1);l1=parameter(2);
a3=parameter(3);rho_min=parameter(4);rho_max=parameter(5);

% 原点O1，固定点F1，动点P，A3
radius=30;pointnum=100;
A3=[p(1)-cos(p(3))*a3,p(2)-sin(p(3))*a3];

mycolor=[0.4660 0.6740 0.1880];
filledCircle(appaxis,[0,0],radius,pointnum,mycolor); % 原点O1
hold(appaxis,'on');
filledCircle(appaxis,[l1,0],radius,pointnum,mycolor); % 固定点F1
filledCircle(appaxis,p(1:2)',radius,pointnum,mycolor); % 动点P
filledCircle(appaxis,A3,radius,pointnum,mycolor); % 动点A3

%直线O1F1,F1P,PO1,O1A3,A3P
plot(appaxis,[0,l1],[0,0],'Color',[0 0.4470 0.7410,0.8],'linewidth',4);
plot(appaxis,[l1,p(1),0,A3(1)],[0,p(2),0,A3(2)],'Color',[0.4940 0.1840 0.5560,0.5],'linewidth',1.5);%三连杆
% text(appaxis,(l1+p(1))/2,(0+p(2))/2,'Limb1','horiz','center');
% text(appaxis,p(1)/2,p(2)/2,'Limb2','horiz','center');
% text(appaxis,A3(1)/2,A3(2)/2,'Limb3','horiz','center');
plot(appaxis,[A3(1),p(1)],[A3(2),p(2)],'Color',[0.8500 0.3250 0.0980,0.6],'linewidth',3);

xlabel(appaxis,'x');ylabel(appaxis,'y');
axis(appaxis,'equal');
hold(appaxis,'off');
xlim(appaxis,[-200 800]);
ylim(appaxis,[-200 1400]);
end

