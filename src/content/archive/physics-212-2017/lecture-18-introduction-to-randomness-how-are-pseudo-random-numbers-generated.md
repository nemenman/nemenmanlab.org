---
title: "Lecture 18: Introduction to randomness. How are pseudo-random numbers generated?"
group: "physics-212-2017"
wiki_title: "Physics 212, 2017: Lecture 18: Introduction to randomness. How are pseudo-random numbers generated?"
order: 150
---

### General notes

A good introduction to probability theory, one of my favorites, but more on the mathematical side, can be found at [Introduction to Probability](http://www.dartmouth.edu/~chance/teaching_aids/books_articles/probability_book/pdf.html) by CM Grinstead and JL Snell.

### Why do we need random numbers?

- Some processes are fundamentally random (quantum mechanics, statistical mechanics, mutations, chemical reactions).
- Some calculations are easier done using random numbers than using deterministic approaches (e.g., calculating area of a complex object).
- Avatars for randomness: a coin toss, a dice, a number of molecules in a certain volume of air, time to a click of a Geiger counter.

### Introducing concepts of randomness

To define the necessary probabilistic concepts, we need

- To define a set of outcomes that a random variable can take (e.g., head or tails, six sides of a die, etc.).
- Then we define a probability of a certain outcome $x$ as a limit of frequencies after many random draws, or events. That is, if after $N$ draws, the outcome happened $n_x$ times, then it's frequency is $f_x=n_x/N$, and the probability is $P(x)=\lim_{N\to\infty}f_x=\lim_{N\to\infty}\frac{n_x}{N}$.

Probabilities satisfy the following properties, which follow from their definition of limits of frequencies:

- nonnegativity: $P_i\ge0$
- unit normalization: $\sum_{i=1}^N P_i=1$
- nesting: if $A\subset B$ then $P(A)\le P(B)$
- additivity (for non-disjoint events): $P(A\cup B)=P(A)+P(B)-P(A\cap B)$
- complementarity $P(not\, A)=1-P(A)$

#### What if we are studying more than one random variable?

Multivariate distributions $P(x,y)$ is the probability of both events happening. It contains all of the information about the variables, including

- Marginal distribution: $P(x)=\sum_{y\in Y} P(x,y)$
- The conditional distribution, which can then be defined as $P(y|x)=P(x,y)/P(x)$, so that the probability of both events is the probability of the first happening, and then the probability of the second happening given that the first one has happened.

The conditional distributions are related using the Bayes theorem, which says: $P(x,y)=P(x|y)P(y)=P(y|x)P(x)$, so that $P(x|y)=\frac{P(y|x)P(x)}{P(y)}$.

We can also now formalize the intuitive concept of dependence among variables. Two random variables are considered to be statistically independent if and only if $P(x,y)=P(x)P(y)$, or, equivalently, $P(x|y)=P(x)$ or $P(y|x)=P(y)$.

### How easy is it to generate random numbers?

- Do exercises on [this web page](http://faculty.rhodes.edu/wetzel/random/mainbody.html) to get a better feel for random numbers. Were you successful in generating random numbers without the help of a coin?
- Linear congruential method for generating random numbers. See <http://apps.nrbook.com/c/index.html>, Chapter 7.1 for details.
- Many standard systems use: multiplier = 7\*\*5, modulus = 2\*\*31-1, increment = 0

### Your turn

- Download the [rnd_generation](/archive/files/Rnd_generation.txt) script and play with different multiples and moduli for the linear congruential method.
- Histogram your results. Do all values of the parameters produce good random numbers?
- [Submit your work](https://docs.google.com/forms/d/e/1FAIpQLSeNvrPddCgvMfHdlSA8uYDddBFqLK81Rrr4l7jfozud6J7iww/viewform).
