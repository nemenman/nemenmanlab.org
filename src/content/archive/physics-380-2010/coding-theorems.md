---
title: "Coding Theorems"
group: "physics-380-2010"
wiki_title: "Physics 380, 2010: Coding Theorems"
order: 50
---

## Lectures 8, 9

These lectures describe the main theorems of Information Theory. You should read the text book by Cover and Thomas, lecture notes by Bialek, and the article by Tishby et al, 2000.

- Introduction to an *information channel*: memoryless channel, channel with memory, with and without a feedback.

- General thoughts: what should a channel be in order transmit information?

  - It should be wide enough so that we can send the necessary amount through
  - It should be reliable enough (this is related to the previous property)
  - It should be fast, so that the information stays relevant by the time it is received

  We will consider just the first two properties in what follows.

- Entropy bound for coding sequences from uniform distributions: a number from a uniform distribution can be encoded by, give or take, $S$ bits, where $S$ is its entropy. This is trivial to show for distributions that live on 2, 4, 8, 16, etc. possible outcomes. For spaces with other cardinalities, we can bound the coding length between the codes needed for the cardinalities with one higher and one lower powers of two. To make bounds stronger, we consider coding duplets, triplets, quadruplets of numbers at the same time.

- Typical sequences (asymptotic equipartition): for very long sequences, of length $n$, the majority of such sequences have a probability of $2^{-nS}$, and there are $2^{nS}$ such sequences, where $S$ is the information rate. That is, only very few sequences of all possible ones actually have a nonzero probability. These sequences are called *typical*, and the rest of the sequences basically don't happen. We prove this statement by using the law of large numbers (log probabilities of all sequences will eventually tend to entropies), but there's nothing in the proof about the rate of convergence.

- Coding sequences from arbitrary distributions: Give or take, the source coding theorem says that the signal can be compressed down to its entropy rate. This means that, the length of an optimal code of a long sequence of characters per character is equal to the entropy rate. It doesn't mean that one would be able to compress a single character down to its entropy. The theorem is asymptotic, meaning that one may need to wait for a long time, maybe infinitely long, to decode a sequence if it is coded near the coding limit. In order to prove this, we note that all long sequences are uniformly distributed due to the equipartition theorem, and we can use our previous results to encode those.

- The above is referred to as the *source coding theorem*.

- Kullback-Leibler divergence: How much longer will a code be if we use a coding strategy optimized for a distribution $P(x)$, but the data comes from a distribution $Q(x)$. Per symbol, this is given by the Kullback-Leibler divergence: $D_{\rm KL}[Q||P]=\int dx Q(x) \log \frac{Q(x)}{P(x)}$.

- Jointly typical sequences. Now suppose we would like to transmit information through a channel specified by $P(y|x)P(x)$. We start with analyzing typical sequences in the joint distribution (aka, *jointly typical*). There are $2^{S[X,Y]}$ of such sequences. This is smaller than the number of sequences that are only marginally typical, $2^{S[X]+S[Y]}$. By specifying an asymptotically long input sequence, we are guaranteed that on the output we will have one of the sequences jointly typical with it (using basically the same arguments as for source coding) with the same constant probability $2^{-S[Y|X]}$. As a result, we can encode $2^{nI[X;Y]}$ sequences essentially without an error.

- $I[X;Y]$ can be further maximized with respect to $P(x)$. The resulting maximum information that can be transmitted through this channel is called the *channel capacity*.

- The *channel coding theorem* says that one can send, with no errors, up to the channel capacity bits per unit time through a channel. This is achieved by introducing redundancy (many output sequences corresponding to the same input sequences). This is, again, an asymptotic result, so we may need to wait for a very long time to actually encode/decode the data. So the data might not be (and generally is not) instantaneously available.

- Chanel coding with feedback and memory: surprisingly, feedbacks don't change this limit much. Memory in the channel may have a stronger effect, and it is fair to say that we don't fully understand it yet.

## Homework (due Oct 1)

1.  Let's investigate the source coding theorem. Suppose we have a signal that can take two values A and B. A is a very rare event, that is $p_A\ll p_B$. Recall the previous homework and show that the entropy of this distribution $S=p_A\log_2 e/p_A$. This is much smaller than 1 bit that we would expect for a two-choice signal if $p_A$ were equal to $p_B$. Can you design a better encoding strategy? One possibility is to encode a sequence of A's and B's with a sequence of numbers that represent the numbers of B's between two successive A's. That is, crudely, a sequence of BBBABBBBBAAB would become 3501, or, in binary, 11 101 0 1. But this has problems: how do we know if the sequence ends with B or A? How do we know when one number ends and another begins? E.g., does 1110101 correspond to 11 101 0 1 or maybe to 1 1 10 101? Or yet something else? Try to improve the code I suggested above to make it uniquely decodable. Then estimate the length of the code for a sequence encoded this way -- it the length close to the entropy of the sequence? If you want, you can use any other encoding strategy, for example Lemple-Ziv encoding (Ziv and Lempel, 1977), or maybe yet something else. Is your own code close to the entropy bound?
2.  Now let's explore the channel coding theorem (and also learn how to do optimization in Matlab and Octave, and also start using functions, rather than scripts.). Suppose we have the following molecular channel: for any number of molecules on the input $x$, the channel output $y$ is a Poisson variable with that mean (this is relevant to Ziv et al, 2006). That is, $P(y|x)=\frac{x^ye^{-x}}{y!}$. Write a code to estimate the mutual information over this channel for an arbitrary distribution of the (discrete) input signal. Use the input distribution as an input to the function you write. Explore different input distributions, assuming that the number of input molecules is between 0 and 20. Can you find a distribution that allows you to send 2 bits through the channel? 3 bits? 4 bits? *For Grad Students: Now try to maximize this mutual information by changing the input distribution comprehensively using minimization routines (in Matlab, you will need to use the fminsearch functions, and in octave you will use the sqp function; Matlab and octave are not compatible for optimization routines). How many bits can you send through at the maximum?*

We have written the following Matlab routines for Problem 2, which will be useful to us in the future:

- [Poisson_spread.m](/archive/files/Poisson_spread.m) -- takes an input marginal distribution $px$ and produces the joint distribution $pxy$ by multiplying the marginal with the Poisson conditional.
- [mutual.m](/archive/files/Mutual.m) -- calculates the mutual information in a joint distribution $pxy$
- [my_entropy.m](/archive/files/My_entropy.m) -- calculates the entropy of a 1-d or a 2-d joint distribution provided as an input.
