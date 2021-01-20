addpath(genpath('.'));
load('q3.mat');
myq3=load('myq3.mat');
mydq3=load('mydq3.mat');
myq3=myq3.ans;
mydq3=mydq3.ans;


dq3=[-0.1815;diff(q3)];
delta_t = 0.05;
T_total = 5;
t = 0:delta_t:T_total;
tau=tau(5*[1:length(t)]-4);
q3 = timeseries(q3,t');
dq3 = timeseries(dq3,t');
tau = timeseries(tau,t');
