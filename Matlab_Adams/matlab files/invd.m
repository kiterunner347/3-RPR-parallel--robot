function F = invd(q,qd,qdd)
%本文件调用函数求平面三自由度机器人动力学逆解，输入为轨迹，输出为驱动力
load ('invdy.mat');
J = Jacob(q(3),q(1),q(2));
Q_f = Q(q(3),qd(3),qdd(3),qdd(1),qd(1),q(1),qdd(2),qd(2),q(2));
F = inv(J)*Q_f;
end