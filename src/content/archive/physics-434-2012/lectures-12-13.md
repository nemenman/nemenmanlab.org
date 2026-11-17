---
title: "Lectures 12-13"
group: "physics-434-2012"
wiki_title: "Physics 434, 2012: Lectures 12-13"
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
  - channel with memory: expression that depends on the concentration of certain proteins in the cell, which in turn depend on the activity in prior times
  - channel with feedback: gene expression with feedback
- Entropy bound for coding sequences from uniform distributions: a number from a uniform distribution can be encoded by, give or take, $S$ bits, where $S$ is its entropy. This is trivial to show for distributions that live on 2, 4, 8, 16, etc. possible outcomes. For spaces with other cardinalities, we can bound the coding length between the codes needed for the cardinalities with one higher and one lower powers of two. To make bounds stronger, we consider coding duplets, triplets, quadruplets of numbers at the same time.
- **Source coding theorem:** a signal can be compressed without losses down to its entropy rate. This means that, the length of an optimal code of a long sequence of characters per character is equal to the entropy rate. It doesn't mean that one would be able to compress a single character down to its entropy. The theorem is asymptotic, meaning that one may need to wait for a long time, maybe infinitely long, to decode a sequence if it is coded near the coding limit. In order to prove this, we note that all long sequences are uniformly distributed due to the equipartition theorem, and we can use our previous results to encode those.
- Let's investigate the source coding theorem. Suppose we have a signal that can take two values A and B. A is a very rare event, that is $p_A\ll p_B$. Recall that the entropy of this distribution $S=p_A\log_2 e/p_A$. This is much smaller than 1 bit that we would expect for a two-choice signal if $p_A$ were equal to $p_B$. Can you design a better encoding strategy? One possibility is to encode a sequence of A's and B's with a sequence of numbers that represent the numbers of B's between two successive A's. That is, crudely, a sequence of BBBABBBBBABBBBBBBB would become 358, or, in binary, 11 101 1000. But this has problems: how do we know if the sequence ends with B or A? How do we know when one number ends and another begins? E.g., does 111011000 correspond to 11 101 1000 or maybe to 1 1 101 10 0 0? Or yet something else?
- Let's improve this code to make it uniquely decodable. The [Huffman coding](http://en.wikipedia.org/wiki/Huffman_coding) approach allows us to do exactly this (see the wikipedia link for details). We try to assign to (a combination of) symbols a code word of the same length as their negative log-probability. This leads to the average code lengths of $\langle l\rangle =-\sum P \log P= S$. To be able to do this, one may need to look at very long combinations of symbols, so that their probability can be sandwiched neatly between $2^{-n}$ and $2^{-(n+1)}$.
- Kullback-Leibler divergence: How much longer will a code be if we use a coding strategy optimized for a distribution $P(x)$, but the data comes from a distribution $Q(x)$. Per symbol, this is given by the Kullback-Leibler divergence: $D_{\rm KL}[Q||P]=\int dx Q(x) \log \frac{Q(x)}{P(x)}$.
- Given the channel description $P({\rm response}|{\rm signal})\equiv P(r|s)$ one can define the channel capacity as $C=\max_{P(s)}I[R;S]$.
- **Channel coding theorem:** One can send, with no errors, up to the channel capacity bits per unit time through a channel. This is achieved by introducing redundancy (many output sequences corresponding to the same input sequences). This is, again, an asymptotic result, so we may need to wait for a very long time to actually encode/decode the data. So the data might not be (and generally is not) instantaneously available. We showed examples in class of multiple parity checks allowing us to reconstruct a message in detail. See also [Low density parity check code](http://en.wikipedia.org/wiki/Low-density_parity-check_code) and [Turbo code](http://en.wikipedia.org/wiki/Turbo_code) articles in wikipedia.
- Chanel coding with feedback and memory: surprisingly, feedbacks don't change the channel limit much. Memory in the channel may have a stronger effect, and it is fair to say that we don't fully understand it yet.
- Can biochemical circuits come close to the channel capacity? We follow the discussion of Ziv et al., 2007.
  - Consider a chain: signal s -\> mean response $\rho$ -\> actual noisy response r. Due to signal processing inequality, $I[S,R]\le I[\rho, R]$.
  - Assuming that $\rho\gg 1$, we get $r=\rho+\eta$, where $\sigma^2_\eta=\rho$.
  - Counting argument suggests that for N molecules with $\sqrt{N}$ error, there are $\sqrt{N}$ distinguishable states, and the information is limited by $I\approx 1/2 \log_2 N$.
  - For a fixed mean response N, we can calculate $P(\rho)$ that maximizes $I[\rho;R]$. We get $P(\rho)=\frac{1}{(2\pi \rho N)^{1/2}}\exp[-\rho/(2N)]$. And the information becomes $I\approx 1/2 \log_2 N+O(1/N)$.
  - This is the best possible result. But in a biochemical system not every $P(\rho)$ is possible. Biochemical systems are modeled typically with Hill activation/suppression dynamics $\frac{dx}{dt}=\frac{Vy^n}{y_0^n+y^n}$ (activation of x by y) or $\frac{dx}{dt}=\frac{V}{y_0^n+y^n}$ (suppression of x by y). And different values of the chemical signals may switch the binding/MIchaelis constant $y_0$. To achieve good information transmission, one would need to make sure that mean responses to different chemical inputs are well-separated and narrow -- but one wouldn't be able to have the optimal distribution of $P(\rho)$ as stated above (see picture on board how these distribution looks).
  - Ziv et al., 2007, have shown that the inability of biochemical networks to have the optimal $P(g)$ is not very important. Even with this constraint, the maximum information that can be transmitted through these systems is still close to $\min(S[S], 1/2\log_2N)$.
  - Biochemical systems can be very efficient in transmitting information, with their intrinsic stochastic noisiness being, essentially, the main constraint.
