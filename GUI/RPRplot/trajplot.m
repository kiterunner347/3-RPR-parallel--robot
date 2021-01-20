function trajplot(appaxis,t,traj,parameter)
% 绘制轨迹
num=length(t);

for i=1:num
    rprplot(appaxis,traj(i,:),parameter);
    pause(t(i)/1000);    
end

end

