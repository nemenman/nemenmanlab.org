function f=FSerVal(t,A0,A,B)
f=A0;
for n=1:length(A)
    f=f+A(n)*cos(2*pi*n*t);
    f=f+B(n)*sin(2*pi*n*t);
end