clc; clear;
 
% 初始化一个电影矩阵
M = moviein(16);
% 创建电影
for k = 1:16
   plot(fft(eye(k+16)));
   axis equal;
    % 调用getframe函数生成每个帧
   M(k) = getframe;
end
% 调用movie函数将电影动画矩阵M(k)播放5次
movie(M, 5);
 
 
