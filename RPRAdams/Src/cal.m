clear;clc;
close all;

load('q.mat');
load('m.mat');
load('invdy.mat');
%根据约束条件求r,rd,rdd
r = zeros(3,1);
r(1) = sqrt((x - l1)^2 + y^2);
r(2) = sqrt(x^2 + y^2);
r(3) = sqrt((x - a3*cos(phi))^2 + (y - a3*sin(phi)^2));
rd = zeros(3,1);
rd(1) = ((x-l1)*xd + y*yd)/r(1);
rd(2) = (x*xd + y*yd)/r(2);
rd(3) = ((x - a3*cos(phi))*(xd + a3*sin(phi)*phid) + (y - a3*sin(phi))*(yd - a3*cos(phi)*phid))/r(3);
rdd = zeros(3,1);
rdd(1) = -rd(1)^2/r(1) + (xd^2 + (x - l1)*xdd + yd^2 + y*ydd)/r(1);
rdd(2) = -rd(2)^2/r(2) + (xd^2 + x*xdd + yd^2 + y*ydd)/r(2);
rdd(3) = -rd(3)^2/r(3) + ((xd + a3*phid*sin(phi))^2 + (x - a3*cos(phi))*(xdd + a3*phidd*sin(phi) + a3*phid^2*cos(phi))...
                          +(yd - a3*phid*cos(phi))^2 + (y - a3*sin(phi))*(ydd - a3*phidd*cos(phi) + a3*phid^2*sin(phi)))/r(3);
%坐标分解
x = q(1);
y = q(2);
phi = q(3);
xd = qd(1);
yd = qd(2);
phid = qd(3);
xdd = qdd(1);
ydd = qdd(2);
phidd = qdd(3);

rdd1 = -rd1^2/r1 + (xds^2 + (xs - l1)*xdds + yds^2 + ys*ydds)/r1;
rdd2 = -rd2^2/r2 + (xds^2 + xs*xdds + yds^2 + ys*ydds)/r2;
rdd3 = -rd3^2/r3 + ((xds + a3*phids*sin(phis))^2 + (xs - a3*cos(phis))*(xdds + a3*phidds*sin(phis) + a3*phids^2*cos(phis))...
                          +(yds - a3*phids*cos(phis))^2 + (ys - a3*sin(phis))*(ydds - a3*phidds*cos(phis) + a3*phids^2*sin(phis)))/r3;
rd1 = ((xs-l1)*xds + ys*yds)/r1;
rd2 = (xs*xds + ys*yds)/r2;
rd3 = ((xs - a3*cos(phis))*(xds + a3*sin(phis)*phids) + (ys - a3*sin(phis))*(yds - a3*cos(phis)*phids))/r3;
% q = [0.2082
%     1.0467
%     0.1745];
% qd = [3.3705
%    83.8451
%   -87.2155];
% qdd = [-70.8928
%   117.4606
%   -46.5678];