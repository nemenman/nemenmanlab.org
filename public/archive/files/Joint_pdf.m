function Pxy=joint_pdf(conditional, marginal)
%function Pxy=joint_pdf(conditional, marginal)
%  calculating joint distribution from the conditional and the marginal.
%  Note that conditional can be P(x|y) or P(y|x), and this is distinguished
%  by whether the dimensionality of the marginal.
%  If the conditional is  MxN, and the marginal is Mx1, then the
%  conditional is P(y|x); if the conditional is MxN, and the marginal is
%  1xN, then the conditional is P(x|y).
%  No checking that conditionals are normalized is done.

C_size=size(conditional);
M_size=size(marginal);

if (M_size(2)>M_size(1))    %1xN vector of the marginal; P(x|y) conditional
    if(C_size(2)~=M_size(2))
        error('Mismatched marginal and conditional dimensions.')
    end
    Pxy=conditional.*(ones(C_size(1),1)*marginal);
else                        %Mx1 vector of the marginal; P(y|x) conditional
    if(C_size(1)~=M_size(1))
        error('Mismatched marginal and conditional dimensions.')
    end
    Pxy=conditional.*(marginal*ones(1,C_size(2)));
end


