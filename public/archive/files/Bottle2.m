% function bottle
%
% inputs
%
% 1. matrix pyx=p(y,x), N*M  
% 2. cardinality Z 
% 3. inverse temperature beta
% 4. tolerance for "convergence" in iteration
%
% and apply BA algorithm 
%
% outputs
% 
% 1. p(z|x) 
% 2. p(y|z)
%
% last edited 10/17/02

function [Pzx,Pyz]=bottle(pyx,Z,beta,tol)

if nargin<1 pyx=rand(6,4); end
if nargin<2 Z=2; end
if nargin<3 beta=.5; end
if nargin<4 tol=10^(-5); end

Y=size(pyx,1);				% cardinality Y
X=size(pyx,2);				% cardinality X

pyx=pyx/sum(sum(pyx)) 			% normalization

Px=sum(pyx,1);				% size X
Py=sum(pyx,2);				% size Y

% create initial guess for p(y,z): a line along the "diagonal", plus noise

if Y>Z
  zline=round(((1:Y)-1)*(Z-1)/(Y-1)+1);
  pyz=full(sparse(1:Y,zline,1));
else
  yline=round(((1:Z)-1)*(Y-1)/(Z-1)+1);
  pyz=full(sparse(yline,1:Z,1));
end
pyz=pyz+.01*rand(size(pyz));


Zy  = sum(pyz,2);			% size Y
for y=1:Y
   pyz(y,:)=pyz(y,:)*Py(y)/Zy(y);	% ensures \int dz p(y,z)=p(y)
end
Pz = sum(pyz,1);			% size Z

% define conditionals: p(y|x)=p(y,x)/p(x)
for x=1:X
	Pyx(:,x)=pyx(:,x)./Px(x);	% p(y|x), size Y*X
end

% define conditionals: p(y|z)=p(y,z)/p(z)
for z=1:Z
	Pyz(:,z)=pyz(:,z)./Pz(z);	% p(y|z), size Y*Z
end

% function of x only used in KL divergence
lPyx=llog2(Pyx);				% size Y*X
for x=1:X
	mHyx(x)=lPyx(:,x)'*Pyx(:,x);	% size X, conditional entropy summing over y only
end

% used in main loop
xx=1:X;
count=0;
err=10^50;
Pyzold=500+rand(Y,Z);

% main loop:
while err>tol
  count=count+1;

  % Dxz requires Pyz,Pyx,mHyx
  
  lPyz=llog2(Pyz);			% size Y*Z
  Dxz=mHyx'*ones(1,Z)-Pyx'*lPyz;	% size X*Z
  
  % Z requires Dxz, Pz
  
  ebD=exp(-beta*Dxz');			% size Z*X
  Zx=Pz*ebD;				% size X, eqn 26ff
  
  % BA algorithm: required Dxz,Pz,Z,Pyx
  
  for z=1:Z;
    Pzx(z,xx)=Pz(z)./Zx(xx);		% first term in 28a
  end
  Pzx=Pzx.*ebD;				% second term in 28a

  Pz=Px*Pzx';				% 28b

  for x=1:X
	  for z=1:Z
		  Pxz(x,z)=Pzx(z,x).*Px(x)./Pz(z);
	  end
  end
  Pyz=Pyx*Pxz;				% 28c

  % end of loop: output

  errM=Pyz-Pyzold;
  err=sqrt(mean(mean(errM.*errM)))
  Pyzold=Pyz;
end
