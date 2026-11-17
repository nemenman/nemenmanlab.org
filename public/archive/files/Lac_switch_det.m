function [n, t]=lac_switch_det(n0,alpha0, alpha1, K, eta, r, T)
% n0 -- initial number of mRNA molecules
% alpha0 -- basal transcription
% alpha1 -- activated transcription
% K -- Kd
% eta -- hill coefficient
% r -- clearance (degradation) rate of the mRNA
% T -- total simulation time
%
%Output:
% n -- number of mRNA molecules
% t -- event times

i=1;
dt=1/(10*r);
L=round(T/dt);
n=zeros(1,L);
n(1)=n0;
t=[0:L-1]*dt;

for i=1:L-1
    n(i+1)= n(i)+ (alpha0+alpha1*(n(i)/K)^eta/(1+(n(i)/K)^eta)-n(i)*r)*dt;
end