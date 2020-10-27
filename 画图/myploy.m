function polyarray=myploy(Ori,radius,angle,num)
% 求解圆弧的多边形的各个点
angle=linspace(angle(1),angle(2),num);

x1=Ori(1)+radius(1)*cos(angle); y1=Ori(2)+radius(1)*sin(angle);
x2=Ori(1)+radius(2)*cos(angle(end:-1:1)); y2=Ori(2)+radius(2)*sin(angle(end:-1:1));
x1=x1';x2=x2';
y1=y1';y2=y2';

poly_x=[x1;x2];poly_y=[y1;y2];
polyarray=polyshape(poly_x,poly_y);

end

