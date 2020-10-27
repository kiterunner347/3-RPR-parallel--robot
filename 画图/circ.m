function circ(Ori,radius,angle,num,line)
% 画圆弧的程序
angle=linspace(angle(1),angle(2),num);

hold on;
x1=Ori(1)+radius(1)*cos(angle); y1=Ori(2)+radius(1)*sin(angle);
plot(x1,y1,line);
x2=Ori(1)+radius(2)*cos(angle); y2=Ori(2)+radius(2)*sin(angle);
plot(x2,y2,line);

end

