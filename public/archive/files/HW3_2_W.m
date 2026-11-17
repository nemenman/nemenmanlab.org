N=10;
p=.5;
 
times=zeros(1,N);
 
for i=1:N
  V=0;t=0;
while V<6
  
    V=abs(V+sign(rand-1+p));
    t=t+1;
end
times(i)=t;
 end
 
mean(times)
std(times)/(mean(times))
