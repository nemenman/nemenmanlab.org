---
title: "Lecture 5"
group: "physics-380-2011"
wiki_title: "Physics 380, 2011: Lecture 5"
order: 60
---

Today we are discussing random walks in biology, which we introduced during the previous lecture.

The book that we used to study probability has a great section on random walks: see [Introduction to Probability](https://web.archive.org/web/20160108154003/http://www.dartmouth.edu:80/~chance/teaching_aids/books_articles/probability_book/pdf.html) by CM Grinstead and JL Snell. Another, more physics-like book on the subject that I recommend is "Random Walks in Biology" by H. Berg.

#### Warmup question

1.  Chemical signals from the outside world, such as antigens in the case of immune cells, are typically sensed by receptors on the cell surface. The binding of a signaling molecule changes the receptor's confirmational state. The receptor, still in the membrane, then meets with one or more of enzymes that diffuse in from afar on the membrane and catalyze its various additional modifications. Finally the receptor complex is cleaved, and part of its intra-cellular domain travels to other compartments of the cells, such as nucleus to initiate further signaling events (e.g., transcription). Can you explain why the opposite sequence, where a bound receptor is first cleaved and then its signal relay component is modified in the cytosol, is used much less frequently?

#### Main Lecture

- (Biased) random walk
  - $T$ steps of $\pm a$ length each, and the probability of left-right steps is not the same. For the total displacement, $\mu=T\times\text{(bias of single step)}=Tv$ and $\sigma^2=T\sigma^2_{\rm one step}$.
  - Discrete time / discrete space walk is the simple, workable model of essentially all diffusive processes.
- Properties of the walks depend on the number of dimensions
  - For a diffusive process, the radius of explored region goes as $r\propto \sqrt{T}$. The number of different sites in the explored region is $V\propto T^{d/2}$. But the number of different visited sites is $n\propto T$. Hence each site is explored about $n/V\propto T^{1-d/2}$ times. Hence in 1-d each site is explored many times, in 2-d each site is (barely) explored, and in 3-d very few sites are ever explored
- Introducing the new model system: the *E. coli* *lac* operon. A good introduction is (Dreisigmeyer et al., 2008).
  - We write up the model.
  - two problems -- how does one activate transcription when it's shut off, and how does one stop it (or how does a TF find the binding site?)
  - both are related to properties of random walks. Let's discuss them one by one.
- First passage times: what is a distribution of time until a random walk or diffusion reaches a particular point? (Grinstead and Snell book)
  - Connections between passage, return, and being there: the moment generating functions are all related. Typically problems for first/eventual passage/return/location analysis are solved using moment generating functions. E.g., probability of being at point $x$ at time $t$ is equal to a probability of first passing through $x$ at $\tau \in [0,t)$ and then returning to $x$ in time $t-\tau$. Hence $MGF_{being\; at\;x}=MGF_{{first\;passage}}MGF_{{eventual\;return}}$.
  - Result for probability of return at time $t$ in 1d: $P(2t)=C_t^{2t}2^{-2t}$. Show the plot of this.
  - Return and passage probabilities in different dimensions: mean return times diverge in all dimensions; probability of eventual return is 1 in 1-d and 2-d, and about 0.65 in 3-d.
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
- Wiener process: A good model of random walk at long temporal and spatial scales is diffusion. That is $x(t)\sim N(vt,\sigma^2 t)$. It's useful to represent such $x$ as a solution of an ordinary differential equation $\frac{dx}{dt}=\sigma\eta(t)$ where $\eta(t)$ is a Gaussian random variable with zero mean and the covariance $\langle\eta(t)\eta(t')\rangle=\delta(t-t')$. See the Homework problem No. 1 for the derivation of this. The random variable $\eta$ is called the Wiener process, after [Norbert Wiener](http://en.wikipedia.org/wiki/Norbert_Wiener), who invented it.
