function out=unzero(x)
out=x+(x==0)*1e-50;