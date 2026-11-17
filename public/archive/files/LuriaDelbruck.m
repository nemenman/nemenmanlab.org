p_mut=1e-9;
mut=zeros(500,1);

for i=1:500                 % No. of cultures  
    n=100;
    for t=1:21              % time step
        n=2*n;              % doubling
        new_mut=poissrnd(n*p_mut);
        mut(i)=2*mut(i)+new_mut;
        n=n-new_mut;
    end
end