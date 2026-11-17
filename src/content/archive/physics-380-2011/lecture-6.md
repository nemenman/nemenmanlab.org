---
title: "Lecture 6"
group: "physics-380-2011"
wiki_title: "Physics 380, 2011: Lecture 6"
order: 70
---

Today we are continuing discussion of random walks in biology.

The book that we used to study probability has a great section on random walks: see [Introduction to Probability](https://web.archive.org/web/20160108154003/http://www.dartmouth.edu:80/~chance/teaching_aids/books_articles/probability_book/pdf.html) by CM Grinstead and JL Snell. Another, more physics-like book on the subject that I recommend is "Random Walks in Biology" by H. Berg.

#### Finishing the previous lecture

- Return times and Berg-von Hippel transcription factor searching for a binding site. What is an optimal strategy for a transcription factor to search for a binding site?
  - Why 1-d search would fail? Because too much time is spent on exploration -- you always come back. --*discussed last time*
  - Why 3-d search would fail? Because very few sites are ever explored, and the TF will not come close to its needed target. -- *discussed last time*
  - Why 1-d/3-d search is faster? You can move fast between patches (3-d), and then explore each patch throughly in 1-d way. Details of 1-3d search (following Slutsky and Mirny, 2004):
    - Search partitioned into 1-3d search rounds.
    - Total search time is the sum of search times in both modes: $t=n(\tau_3+\tau_1)$, where $n$ is the number of rounds.
    - In 3-d search the protein almost never come back to the same search patch.
    - In 1-d search the protein explores $N_1$ sites. Hence $n=M/N_1$, where $M$ is the DNA length.
    - We get $t=M/N_1(\tau_3+\tau_1)$
    - $N_1=\sqrt{16D_1\tau_1/\pi}$ for this model, where $D_1$ is the 1d diffusion constant. In general, we get $N_1\propto\sqrt{D_1\tau_1}$.
    - Thus $t=\frac{M}{\sqrt{16D_1\tau_1/\pi}}(\tau_3+\tau_1)$.
  - Is there an optimal time to spend on a 1-d search? Differentiating $t$ w.r.t. $t_1$, we get $t_1=t_3$. The transcription factor should spend the same amount of time in 1-d and 3-d search modes. Slutsky and Mirny (2004) review experimental confirmations of this.

#### Warmup question

1.  During development, different parts of an embryo make a decision to convert into cells of a different type based on the measured concentrations of various signaling molecules that they measure. These molecules are called morphogens. For example, in drosophila development, the mother fly deposits mRNA molecules coding for a certain protein, called bicoid, onto one of the ends of the egg. These mRNAs are translated into proteins at a constant rate, and the proteins diffuse through the egg and act as a morphogen that controls the activation of expression of subsequent developmental genes. During the diffusion the proteins get degraded and disappear. What is the shape of the concentration of the bicoid protein established in the egg through this mechanism? Can you guess the characteristic length scale describing this shape? See (Gregor et al., 2005) for beautiful measurements of these morphogens.

#### Main Lecture

- Imagine the model of many particles moving diffusively on a 1-d lattice. What is the equation that describes the dynamics of the number of particles with time?
  - Assuming that the number of particles on each site is large, we get that $\frac{d \rho_n}{d t}=D\frac{\rho_{n-1} -2\rho_n+\rho_{n+1}}{\Delta X^2}$
  - In the continuum limit, this become $\frac{\partial \rho(x,t)}{\partial t}=D\frac{\partial^2 \rho(x,t)}{\partial x^2}$
  - This is called the diffusion equation.
  - For the initial condition of $\rho(x,0)=\delta(x)$ (that is, all particles are at 0), the solution is given by a gaussian (verify this in class).
- If particles get degraded, as in the warmup question, the equation gets modified as $\frac{\partial \rho(x,t)}{\partial t}=D\frac{\partial^2 \rho(x,t)}{\partial x^2} - r\rho(x,t)$
  - We can calculate what the concentration would look like in the steady state, where $\rho$ stops changing with time. $0=D\frac{\partial^2 \rho(x,t)}{\partial x^2} - r\rho(x,t)$. We solve this to get $\rho(x)=\rho_0\exp\left[-\frac{x}{\sqrt{D/r}}\right]$.
  - Now consider the problem discussed for fly development in Gregor et al. 2005. Different flies have sizes different by up to a factor of 10. How can they establish the same body plans then? This will require either $D$ or $r$ changing by a factor of a 100! Changing diffusion of a protein is hard, but changing the degradation rate is easier. It turns out that this indeed is what happens for fly development.
