x=round(rand(1000,1000));
y=-log(rand(1000,1000));

meanx=1/2;
stdx=1/2;

meany=1;
stdy=1;

Sx=1/sqrt(1000)*sum((x-meanx)./stdx);
Sy=1/sqrt(1000)*sum((y-meany)./stdy);

hist(Sy,30)
hold on
hist(Sx,30)
hold off