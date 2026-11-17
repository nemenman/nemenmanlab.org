function [x,y,t]=ecoli(T,g1,tau0,v)
    % T -- maximum time of dynamics
    % g1 -- gradient description; c(x,y) = const+g1*x
    % tau0 -- min mean time to tumble
    % v -- velocity
    i=1;
    x=zeros(1,2*round(T/tau0));
    y=x;
    t=x;
    while (t(i)<T)
        i=i+1;
        % choose direction
        phi=2*pi*rand;
        % slope in this direction
        slope = g1*cos(phi);
        % mean time to tumble
        tau = tau0*(1+max(0,slope));
        % choose time to tumble
        dt = -log(rand)*tau;
        x(i) = x(i-1)+v*cos(phi)*dt;
        y(i) = y(i-1)+v*sin(phi)*dt;
        t(i)=t(i-1)+dt;
    end
    x=x(1:i);
    y=y(1:i);
end
