function wos2D(parameter,limphi)
% 绘制工作空间的平面图workspace2D

% 给变量赋值
l0=parameter(1);l1=parameter(2);
a3=parameter(3);rho_min=parameter(4);rho_max=parameter(5);
phi_min=limphi(1);phi_max=limphi(2);
% phi先随便取一个吧，limphi上下限一样的时候就是取某个特定的phi
phi=rand*(phi_max-phi_min)*phi_min;
radius=[rho_min,rho_max];num=100;angle=[-pi/4,pi+pi/4];line={'-r','--g',':b'};

% 给出三个圆的圆心位置
Ori1=[l1,l0];Ori2=[0,l0];
Ori3=Ori2+[a3*cos(phi),a3*sin(phi)];

figure;
circ(Ori1,radius,angle,num,line{1})% 绘制F1的圆弧
circ(Ori2,radius,angle,num,line{2})% 绘制F2的圆弧
circ(Ori3,radius,angle,num,line{3})% 绘制F3的圆弧

% 绘制圆心
r=10;N=50;color=['r','g','b'];

filledCircle(Ori1,r,N,color(1));text(Ori1(1)+70,Ori1(2),'F1','horiz','center');
filledCircle(Ori2,r,N,color(2));text(Ori2(1)+70,Ori2(2),'F2','horiz','center');
filledCircle(Ori3,r,N,color(3));text(Ori3(1)+70,Ori3(2),'F3','horiz','center');

% 画出交集区域
polyarray1=myploy(Ori1,radius,angle,num);
polyarray2=myploy(Ori2,radius,angle,num);
polyarray3=myploy(Ori3,radius,angle,num);
total=[polyarray1 polyarray2 polyarray3];
polyout = intersect(total);
plot(polyout);

axis equal;
xlabel('x');ylabel('y');
title('工作空间图')
grid on;
yymin=min([Ori1(2),Ori2(2),Ori3(2)]);
ylim([yymin-40 inf]);xlim([-inf inf]);
end

