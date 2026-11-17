---
title: "Lecture 7"
group: "physics-380-2011"
wiki_title: "Physics 380, 2011: Lecture 7"
order: 80
---

Today we are continuing discussion of random walks in biology.

The book that we used to study probability has a great section on random walks: see [Introduction to Probability](https://web.archive.org/web/20160108154003/http://www.dartmouth.edu:80/~chance/teaching_aids/books_articles/probability_book/pdf.html) by CM Grinstead and JL Snell. Another, more physics-like book on the subject that I recommend is "Random Walks in Biology" by H. Berg.

#### Warmup question

1.  A few lectures ago, we have discussed a problem of how *E. coli* manages to turn on its *lac* circuitry when there is no *LacY* around to import lactose and no *LacZ* around to transform it to allolactose. We concluded that the system actually gets activated due to random fluctuations. Try to think about what will the probability of activation depend on, and how? Essentially, this is another way of asking a question: what is the probability, by chance, to observe a large number of *LacY/Z* molecules in a cell that is not induced? See Ozbudak et al., 2004, for beautiful measurements of how these genes get turned on.

#### Main Lecture

- *LacY* and *LacZ* are produced with the same rate. What is the probability of having large concentrations of them even when lactose is absent? Due to dilution, the number of molecules goes down exponentially with time. At the same time, once in a while, the *LacI* molecule can unbind by chance, allowing initiation of transcription. We will assume that molecules get created/diluted independently one at a time. The deterministic equation describing this is $\frac{dn}{dt}=\alpha-rn$. We can write what's known as a *master equation* for the number of molecules, which would account for the stochasticity: $n$: $\frac{dP(n)}{dt}=-P(n)(rn+\alpha)+P(n+1)r(n+1)+P(n-1)\alpha$
- Assuming that $n$ is not too small (a potentially problematic assumption), we can make a diffusion-like equation, called the Fokker-Planck equation, out of this master equation: $\frac{\partial P}{\partial t}=\frac{\partial}{\partial n}\left\{(rn-\alpha)P(n) +\frac{1}{2}\frac{\partial }{\partial n}\left[(\alpha+rn)P(n)\right]\right\}$
- This allows to ask how often, in steady state, $n$ is large. We set $\partial/\partial t=0$. Then $(rn-\alpha)P(n) +\frac{1}{2}\frac{\partial }{\partial n}\left[(\alpha+rn)P(n)\right]=C$

Near a peak of the distribution, $n=\alpha/r$ thus: $(rn-\alpha)P(n) +\alpha\frac{\partial }{\partial n}P(n)=C$ $C=0$ since $P,\partial P\to0$ at infinity. Thus $n=\alpha/r$ thus: $(rn-\alpha)P(n) +\alpha\frac{\partial }{\partial n}P(n)=0$. Then $P(n)\sim \exp\left(-\left(\frac{rn-\alpha}{\alpha}\right)^2\alpha/r\right)$

- Brian Munsky has a great tutorial presentation discussing master equation and related stochastic modeling techniques.
