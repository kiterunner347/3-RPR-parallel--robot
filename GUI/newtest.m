clear;clc;
close all;

num=1000;% 控制自变量取值的精细程度
x1=rand(num,1);x2=rand(num,1);x3=rand(num,1);
x4=1-x1-x2-x3;% 按照x1、x2、x3为自变量的取法，x4随之确定

% 去除不符合要求的点
index=find(x4<0);
x1(index)=[];x2(index)=[];x3(index)=[];
x4(find(x4<0))=[];

% 开始计算
size=0.85*(2*x1+6*x2+10*x3+15*x4);
rate=0.45*(x1+3*x2+4*x3+4*x4)+0.4*(x3+3.5*x4);
ton=5*size/0.85;

plrate=10*rate./ton;
towrate=8*x1+10*x2+11*x3+11.5*x4;
TEU=87.40129;
shipcall=TEU./(1000*size);
bu=4000*shipcall;
pl=5*TEU.*plrate;
tow=1000*shipcall.*towrate;
fee=bu+pl+tow;

temp=(fee-min(fee))./(max(fee)-min(fee));% 将fee映射到[0,1]
% 绘制三维气泡图，不同坐标(x1,x2,x3)的权重fee大小不同
figure;
for i = 1:length(x1)
   scatter3(x1(i),x2(i),x3(i),temp(i)*1000+100,...
       'MarkerEdgeColor','k','MarkerEdgeAlpha',0,'MarkerFaceColor',...
       [0.8 0.2 0.1]*(temp(i)*0.8+0.2),'MarkerFaceAlpha',0.3);
    hold on
end

xlabel('x1');ylabel('x2');zlabel('x3');
title('数据图');