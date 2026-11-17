V0=-65;
Vth=-35;
dV=5;
dt=1;
N=12;
TT=zeros(9,N);

for i=1:N
 for p=0.1:0.1:.9
  V=V0;
  T=0;
  while(V<Vth)
   T=T+dt;
   r=rand;
   if(r<p)
    V=V+dV;
   else
    V=V-dV;
   end
   if(V<V0)
    V=V0;
   end
  end 
  TT(round(p*10),i)=T;
 end
end
