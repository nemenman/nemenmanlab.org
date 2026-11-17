function [n, t]=lac_switch(n0,alpha0, alpha1, K, eta, r, T)
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

len = 10*(alpha1+alpha0)*T;
n=zeros(1,len);
t=zeros(1,len);
n(1)=n0;
i=1;

while (t(i)<T)
    prop_b   = alpha0+alpha1*(n(i)/K)^eta/(1+(n(i)/K)^eta);
    prop_d   = n(i)*r;
    prop_tot = prop_b+prop_d;
    dt = -(1/prop_tot)*log(rand);
    t(i+1)=t(i)+dt;
    if(rand<prop_d/prop_tot)
        n(i+1)=n(i)-1;
        if(n(i+1)<0)
            n(i+1)=0;
        end
    else
        n(i+1)=n(i)+1;
    end
    i=i+1;
end
n=n(1:i);
t=t(1:i);
