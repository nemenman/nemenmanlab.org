---
title: "Lecture 7"
group: "physics-434-2012"
wiki_title: "Physics 434, 2012: Lecture 7"
order: 80
---

Today we are discussing random walks in biology, which we introduced during the previous lecture.

The book that we used to study probability has a great section on random walks: see [Introduction to Probability](http://www.dartmouth.edu/~chance/teaching_aids/books_articles/probability_book/pdf.html) by CM Grinstead and JL Snell. Another, more physics-like book on the subject that I recommend is "Random Walks in Biology" by H. Berg.

#### Warmup question

1.  Chemical signals from the outside world, such as antigens in the case of immune cells, are typically sensed by receptors on the cell surface. The binding of a signaling molecule changes the receptor's confirmational state. The receptor, still in the membrane, then meets with one or more of enzymes that diffuse in from afar on the membrane and catalyze its various additional modifications. Finally the receptor complex is cleaved, and part of its intra-cellular domain travels to other compartments of the cells, such as nucleus to initiate further signaling events (e.g., transcription). Can you explain why the opposite sequence, where a bound receptor is first cleaved and then its signal relay component is modified in the cytosol, is used much less frequently?

#### Main Lecture

- Introducing the new model system: the *E. coli* *lac* operon. A good introduction is (Dreisigmeyer et al., 2008).
  - We write up the model.
  - two problems -- how does one activate transcription when it's shut off, and how does one stop it (or how does a TF find the binding site?)
  - both are related to properties of random walks. Let's discuss them one by one.
- First passage times: what is a distribution of time until a random walk or diffusion reaches a particular point? (Grinstead and Snell book)
- Connections between passage, return, and being there: the moment generating functions are all related. Typically problems for first/eventual passage/return/location analysis are solved using moment generating functions.
  - Probability of returning to 0 in time $t$ is probability of first returning to zero in time $t_1<t$ and then returning to zero again in the remaining time $t-t_1$. That is $M_{\text{return,}t}(\lambda)=M_{\text{first return},t_1}(\lambda)M_{\text{return},t-t_1}(\lambda)$.
    - Probability of return at time $t=$even in 1d: $P(0|t)={t \choose t/2}2^{-t}$. Show the plot of this. Not that there's a large probability of returning even for large times; 1d random walk is not a good way to explore things
    - This allows to solve for the first return as well.
  - Probability of being at point $x$ at time $t$ is equal to a probability of first passing through $x$ at $\tau \in [0,t)$ and then returning to $x$ in time $t-\tau$. Hence $M_{\text{being at x},t}=M_{\text{first passage through x},t_1}M_{\text{return},t-t_1}$
    - Probability of being at point $x$ in time $t$ when starting at $x=0$ at $t=0$ is $P(x|t)={t \choose (x+t)/2} 2^{-t}$. (Note that both $x,t$ must be either odd or even at the same time.)
  - Return and passage probabilities in different dimensions: mean return times diverge in all dimensions; probability of eventual return is 1 in 1-d and 2-d, and about 0.65 in 3-d.
  - Probabilities of first passage in time $t$ are very small when $x^2\gg Dt$, peak around this value, and fall off with long tails beyond this value.
    - For biased walks, situation changes. Look at Grinsted's book, article (Bel et al., 2010), or the problem of firing an action potential in HW 4.
- Return times and Berg-von Hippel transcription factor searching for a binding site (Berg and von Hippel, 1987; Berg 1981). What is an optimal strategy for a transcription factor to search for a binding site?
  - Why 1-d search would fail? Because too much time is spent on exploration -- you always come back.
  - Why 3-d search would fail? Because very few sites are ever explored, and the TF will not come close to its needed target.
  - Why 1-d/3-d search is faster? You can move fast between patches (3-d), and then explore each patch throughly in 1-d way. Details of 1-3d search (following Slutsky and Mirny, 2004):
    - Search partitioned into 1-3d search rounds.
    - Total search time is the sum of search times in both modes: $t=n(\tau_3+\tau_1)$, where $n$ is the number of rounds.
    - In 3-d search the protein almost never come back to the same search patch.
    - In 1-d search the protein explores $N_1$ sites. Hence $n=M/N_1$, where $M$ is the DNA length.
    - We get $t=M/N_1(\tau_3+\tau_1)$
    - $N_1=\sqrt{16D_1\tau_1/\pi}$ for this model, where $D_1$ is the 1d diffusion constant. In general, we get $N_1\propto\sqrt{D_1\tau_1}$.
    - Thus $t=\frac{M}{\sqrt{16D_1\tau_1/\pi}}(\tau_3+\tau_1)$.
  - Is there an optimal time to spend on a 1-d search? Differentiating $t$ w.r.t. $t_1$, we get $t_1=t_3$. The transcription factor should spend the same amount of time in 1-d and 3-d search modes. Slutsky and Mirny (2004) review experimental confirmations of this.
