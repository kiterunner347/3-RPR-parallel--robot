function F = invd(q,qd,qdd)
%���ļ����ú�����ƽ�������ɶȻ����˶���ѧ��⣬����Ϊ�켣�����Ϊ������
load ('invdy.mat');
J = Jacobi(q(3),q(1),q(2));
Q_f = Q(q(3),qd(3),qdd(3),qdd(1),qd(1),q(1),qdd(2),qd(2),q(2));
% F = transpose(J)\Q_f;
F = J\Q_f;
end