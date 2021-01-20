close all;
clear;clc;
addpath(genpath('.'));
%%
% 输入机器人参数
l0=220;
l1=620;
a3=175;
rho_min=736;rho_max=1236;
parameter=[l0;l1;a3;rho_min;rho_max];

rmpath(genpath('.'));