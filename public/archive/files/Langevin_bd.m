function [n, t]=langevin_bd(n0,alpha, r, dt,T)
% n0 -- initial number of mRNA molecules
% alpha -- production rate
% r -- clearance (degradation) rate of the mRNA
% dt -- time step
% T -- total simulation time
%
%Output:
% n -- number of mRNA molecules
% t -- event times

len = round(T/dt)+1;
n=zeros(1,len);
t=0:dt:T;
n(1)=n0;
for i=1:len-1
    n(i+1)=n(i)+(alpha-r*n(i))*dt;
    noise= sqrt((alpha+r*n(i))*dt)*randn;
    n(i+1)=n(i+1)+noise;
end
