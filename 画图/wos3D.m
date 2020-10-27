function wos3D(parameter,limphi,slice_num)
% 绘制工作空间的立体图workspace3D，对于不同的相位值phi

% 给变量赋值
l0=parameter(1);l1=parameter(2);
a3=parameter(3);rho_min=parameter(4);rho_max=parameter(5);
phi_min=limphi(1);phi_max=limphi(2);
radius=[rho_min,rho_max];num=100;angle=[-pi/4,5*pi/4];line={'-r','--g',':b'};

phi=linspace(limphi(1),limphi(2),slice_num);
figure;
hold on;
for i=1:length(phi)
    % 给出三个圆的圆心位置
    Ori1=[l1,l0];Ori2=[0,l0];
    Ori3=Ori2+[a3*cos(phi(i)),a3*sin(phi(i))];

    polyarray1=myploy(Ori1,radius,angle,num);
    polyarray2=myploy(Ori2,radius,angle,num);
    polyarray3=myploy(Ori3,radius,angle,num);
    total=[polyarray1 polyarray2 polyarray3];

    polyout = intersect(total);
    len=length(polyout.Vertices(:,1));
    patch(polyout.Vertices(:,1),polyout.Vertices(:,2),phi(i)*ones(len,1),...
          phi(i)*ones(len,1),'edgecolor','flat','facecolor','none');
end

view(-45,45);grid on;colorbar;
% axis equal;
xlabel('x');ylabel('y');zlabel('\phi');
title('不同平台倾角下的工作空间')
end

