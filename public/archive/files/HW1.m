nspikes=zeros(1,1000);
for i=1:1000
  spikes=rand(1,100);
  spikes=(spikes<0.06);
  nspikes(i)=sum(spikes);
end