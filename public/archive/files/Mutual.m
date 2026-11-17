function  MI=mutual(pxy)
%calculated mutual information of a joint probability distribution
%checks for normalization and positivity of probabilities done within
%the entropy calculation routing

px=sum(pxy,1); % y marginal
py=sum(pxy,2); % x marginal   
MI= -my_entropy(pxy) +my_entropy(px)+my_entropy(py);