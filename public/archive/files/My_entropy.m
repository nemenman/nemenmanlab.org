function entr=my_entropy(P)
% calculates entropy of the distribution P
% normalizing it first and checking that none of the probabilities are
% negative
    P=P(:);
    P=P/sum(P);
    if(any(P<0))
        error('Negative probabilities encountered.')
    end
   
    Pnz=P(P>0);
    entr= sum(-Pnz.*log2(Pnz));