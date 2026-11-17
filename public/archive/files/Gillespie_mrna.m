function [n,promoter, t]=gillespie_mrna(prom0,n0,k_on,k_off,alpha, r, T)
% prom0 -- initial promotor state
% n0 -- initial number of mRNA molecules
% k_on -- on rate for the promotor
% k_off -- off rate for the promotor
% alpha -- transcription rate given the promotor is on
% r -- clearance (degradation) rate of the mRNA
% T -- total simulation time
%
%Output:
% n -- number of mRNA molecules
% promoter -- promoter occupancy
% t -- event times
 
len = 10*alpha*T;
n=zeros(1,len);
promoter=zeros(1,len);
t=zeros(1,len);
n(1)=n0;
promoter(1)=prom0;

i=1;

%1 -- on process
%2 -- off process
%3 -- birth process
%4 -- death process
while (t(i)<T)
    prop(1)=k_on*(1-promoter(i));
    prop(2)=k_off*promoter(i);
    prop(3)=alpha*promoter(i);
    prop(4)=r*n(i);
    prop_tot = sum(prop);
    dt = -(1/prop_tot)*log(rand);
    t(i+1)=t(i)+dt;
    nextev=rand;
    if(nextev<prop(1)/prop_tot)
        promoter(i+1)=1;
        n(i+1)=n(i);
    elseif(nextev<(prop(1)+prop(2))/prop_tot)
        promoter(i+1)=0;
        n(i+1)=n(i);
    elseif(nextev<(prop(1)+prop(2)+prop(3))/prop_tot)
        promoter(i+1)=promoter(i);
        n(i+1)=n(i)+1;
    else
        promoter(i+1)=promoter(i);
        n(i+1)=n(i)-1;
        if(n(i+1)<0)
            n(i+1)=0;
        end
    end
    i=i+1;
end
n=n(1:i);
promoter=promoter(1:i);
t=t(1:i);

