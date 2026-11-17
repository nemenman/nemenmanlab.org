function pxy=Poisson_spread(px)
    X=length(px);
    pxy=zeros(X,X);
    
    for x=1:X
        for y=1:X
            pxy(x,y)=px(x)*exp(-x)*x^y/factorial(y);
        end
    end
    
    pxy=pxy/sum(sum(pxy));
    
    