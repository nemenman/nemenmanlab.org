---
title: "Lecture 23"
group: "physics-380-2011"
wiki_title: "Physics 380, 2011: Lecture 23"
order: 260
---

This is the first lecture in the "adaptation" block.

## Warmup question

## Main lecture

- Consider again a system where response is driven by a nonlinear function of the input, with noise. For example $\frac{dr}{dt}=f(s)-kr+\eta$.
- In the steady state, $\bar{r}=\frac{f(s)}{k}$. Is there a way to choose the function $f(s)$ in an optimal way, so that the information between $s,r$ is maximized?
- We have to specify what we mean by maximizing information, since, for any ivertible $f$, the information between the entire time series, $I[\{s(t)\},\{r(t)\}]={\rm const}$, independent of $f$.
- Let's look to maximize the same-time information, $I[s(t),r(t)]={\rm const}$. We assume that $r\to 0$, so that the system operates, basically, at quasi-steady-state. Then $I[s,r]= S[r]-S[r|s]$.
- The second term is given by the entropy of the gaussian noise $\eta$, $S[s|r]=\frac{1}{2}\log_22\pi e\sigma_\eta^2$.
- The first term is $S[r] =- \int dr P(r)\log_2P(r)$. But $P(r)= \int ds\, P (r|s)P(s)$. We can assume that the noise is small, so that $P(r|s)$ is much narrower than $P(s)$. Then $P(r)\approx P(\bar{r})$
- Then maximization of MI means maximization of $S[\bar{r}]$. That is, $\bar{r}$ must be uniformly distributed, and so $f(s)=C(s)$, where $C(s)$ is the cumulative distribution -- this derivation was done by Laughlin in 1981. SImilar arguments can be made for evolutionary adaptation.
- This is an example of matching. Specifically, one needs to match mid-point and the width of the response curves to the mean and the standard deviation of the signal.
- In more complex cases, when noise is not small, or when it is signal-dependent, similar derivations are often possible, but they are not analytic.
- Why do we focus at all on same-time information? What is the general value of the observed sensory information? We will study mechanisms of such matching in a future lecture.
- Actions take time, and so to be useable, information about the outside world must be relevant to what the world will be in the future. That is, our past signals drive past responses, resulting in potentially high $I[s_p;r_p]$. But instead we need high $I[s_f;r_p]$ for these responses to be actionable on.
- When signals and responses have short-time correlations only, $I[s_f;r_p]\approx I[s(t);r(t)]$
- This adds the other adaptation that we already discussed -- filtering with the appropriate time scale.
