---
title: "Lecture 11"
group: "physics-380-2011"
wiki_title: "Physics 380, 2011: Lecture 11"
order: 130
---

In these lectures, we cover some background on information theory. A good physics style introduction to this problem can be found in the upcoming book by Bialek (Bialek 2010). A very nice, and probably still the best, introduction to information theory as a theory of communication is (Shannon and Weaver, 1949). A standard and very good textbook on information theory is (Cover and Thomas, 2006).

## Warmup question

1.  Consider a communication channel in a biological system. For example, the outside ligand concentration (input) is transduced into a transcription factor activity (response), with the conditional distribution $P(r|s)$? Which of the following properties will affect our ability to transmit information through this channel?
    - Bandwidth, as measured by the maximum entropy of the signals and the responses.
    - Reliability, as measured by the maximum mutual information between the signals and the responses
    - It should be fast, as measured by the delay $\tau={\rm arg}\, {\rm max}_{\Delta t} I[s(t);r(t+\Delta t)]$.
2.  How does the answer change if we limit the amount of time we have for decoding the information?
3.  Is it possible to send information without an error at all through this channel?

## Main Lecture

- Introduction to an *information channel*:
  - memoryless channel: transcription factor binding
  - channel with memory: expression that depends on the previous occupancy of DNA
  - channel with feedback: gene expression with feedback
- Entropy bound for coding sequences from uniform distributions: a number from a uniform distribution can be encoded by, give or take, $S$ bits, where $S$ is its entropy. This is trivial to show for distributions that live on 2, 4, 8, 16, etc. possible outcomes. For spaces with other cardinalities, we can bound the coding length between the codes needed for the cardinalities with one higher and one lower powers of two. To make bounds stronger, we consider coding duplets, triplets, quadruplets of numbers at the same time.
- Typical sequences (asymptotic equipartition): for very long sequences, of length $n$, the majority of such sequences have a probability of $2^{-nS}$, and there are $2^{nS}$ such sequences, where $S$ is the information rate. That is, only very few sequences of all possible ones actually have a nonzero probability. These sequences are called *typical*, and the rest of the sequences basically don't happen. We prove this statement by using the law of large numbers (log probabilities of all sequences will eventually tend to entropies), but there's nothing in the proof about the rate of convergence.
- Let's investigate the source coding theorem. Suppose we have a signal that can take two values A and B. A is a very rare event, that is $p_A\ll p_B$. Recall that the entropy of this distribution $S=p_A\log_2 e/p_A$. This is much smaller than 1 bit that we would expect for a two-choice signal if $p_A$ were equal to $p_B$. Can you design a better encoding strategy? One possibility is to encode a sequence of A's and B's with a sequence of numbers that represent the numbers of B's between two successive A's. That is, crudely, a sequence of BBBABBBBBABBBBBBBB would become 358, or, in binary, 11 101 1000. But this has problems: how do we know if the sequence ends with B or A? How do we know when one number ends and another begins? E.g., does 111011000 correspond to 11 101 1000 or maybe to 1 1 101 10 0 0? Or yet something else? Let's improve this code to make it uniquely decodable. Use trees for creating decodable sequences.
- Coding sequences from arbitrary distributions: Give or take, the source coding theorem says that the signal can be compressed down to its entropy rate. This means that, the length of an optimal code of a long sequence of characters per character is equal to the entropy rate. It doesn't mean that one would be able to compress a single character down to its entropy. The theorem is asymptotic, meaning that one may need to wait for a long time, maybe infinitely long, to decode a sequence if it is coded near the coding limit. In order to prove this, we note that all long sequences are uniformly distributed due to the equipartition theorem, and we can use our previous results to encode those.
- The above is referred to as the *source coding theorem*.
- Kullback-Leibler divergence: How much longer will a code be if we use a coding strategy optimized for a distribution $P(x)$, but the data comes from a distribution $Q(x)$. Per symbol, this is given by the Kullback-Leibler divergence: $D_{\rm KL}[Q||P]=\int dx Q(x) \log \frac{Q(x)}{P(x)}$.
- Jointly typical sequences. Now suppose we would like to transmit information through a channel specified by $P(y|x)P(x)$. We start with analyzing typical sequences in the joint distribution (aka, *jointly typical*). There are $2^{S[X,Y]}$ of such sequences. This is smaller than the number of sequences that are only marginally typical, $2^{S[X]+S[Y]}$. By specifying an asymptotically long input sequence, we are guaranteed that on the output we will have one of the sequences jointly typical with it (using basically the same arguments as for source coding) with the same constant probability $2^{-S[Y|X]}$. As a result, we can encode $2^{nI[X;Y]}$ sequences essentially without an error.
- $I[X;Y]$ can be further maximized with respect to $P(x)$. The resulting maximum information that can be transmitted through this channel is called the *channel capacity*.
- The *channel coding theorem* says that one can send, with no errors, up to the channel capacity bits per unit time through a channel. This is achieved by introducing redundancy (many output sequences corresponding to the same input sequences). This is, again, an asymptotic result, so we may need to wait for a very long time to actually encode/decode the data. So the data might not be (and generally is not) instantaneously available.
- Chanel coding with feedback and memory: surprisingly, feedbacks don't change this limit much. Memory in the channel may have a stronger effect, and it is fair to say that we don't fully understand it yet.
