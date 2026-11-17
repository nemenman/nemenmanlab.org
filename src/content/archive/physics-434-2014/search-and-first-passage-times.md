---
title: "Search and first passage times"
group: "physics-434-2014"
wiki_title: "Physics 434, 2014: Search and first passage times"
order: 80
---

Here we focus on a particle trying to find a certain site using diffusion-like process. A very good discussion of this is in [Introduction to Probability](https://web.archive.org/web/20160108154003/http://www.dartmouth.edu:80/~chance/teaching_aids/books_articles/probability_book/pdf.html) by CM Grinstead and JL Snell.

### Random walk search in a different number of dimensions

Interestingly, even though a multidimensional random walk is just a combination of a few one-dimensional ones, the resulting properties of the multi-dimensional walk depend on the number of dimensions. This is particularly easy to see when random walks are used as a mechanism for a random search of a certain target. Many biological systems implement such diffusive search strategies because they don't require energy expenditures -- for example, a molecule searching for a binding site on the DNA undergoes a diffusive Brownian motion on its own, without having to implement it deliberately.

For a diffusive process, the radius of explored region goes as $r\propto \sqrt{T}$. The number of different sites in the explored region is $V\propto T^{d/2}$. But the number of different visited sites is $n\propto T$ because the walker visits one site per time step. Hence each site is explored about $n/V\propto T^{1-d/2}$ times. Hence in 1-d each site is explored many times, in 2-d each site is (barely) explored (but it takes long since some sites are visited often), and in 3-d or higher dimensions very few sites are ever explored compared to the available sites. Actually, a statement that in 2-d each site is explored is not a trivial statement, and it doesn't immediately follow from our simple analysis. A better derivation of this is found in the Grinstead and Snell book.

Where would one use random walk search in a different number of dimensions? Consider the famous *lac* operon of *E. coli*, which I am sure you read about in your intro bio classes. You were told that the lac inhibitor protein *lacI* binds on the DNA, changes its shapes, and this prevents RNA polymerase to bind and hence to transcribe the operon, and eventually to produce the lacZ and lacY proteins involved in lactose metabolism and transport into the cell. But how easy is it for the transcription factor to find the necessary target site on the DNA? Let's study this mathematically.

At this point in class, I draw the picture of this regulatory circuit, and we also spend a substantial amount of time discussing the molecular mechanisms of the transcriptional control, and specifically some experiments done by our own Laura Finzi to understand DNA looping in this system. I am skipping this diversion in these lecture notes. The picture will be produced for one of the next incarnations of the class as well. If your own class notes are insufficient, you can read more about this system in (Dreisigmeyer et al., 2008).

For the lacI protein to shut of transcription, it first needs to find the necessary site on the DNA. This is a special case of the *first passage time* problem -- what is the distribution of times when a random walker gets to a certain point for the first time? A good review of this is in the Grinstead and Snell book.

### First passage and first return

There are four different probability distributions that are worth considering when studying diffusive search:

- the distribution of being at a certain point $x$ at time $t$ having started at $x=0$ at $t=0$;
- the distribution of times to return to the initial point after the time $t$;
- the distribution of times of the *first* return to the initial point after the time $t$;
- the distribution of time to to go from $x=0$ to $x$ for the first time in time $t$ (first passage distribution).

These distributions are related. For example, In order to be somewhere at time $t$, one must first get there for the first time at time $t'\le t$, and then return to the same point in exactly the time $t-t'$. That is the distribution of being there is a convolution of the first passage and the return distributions. In other words, the moment generating function of being there is the product of the two other moment generating functions, $M_{\text{being at x},t}=M_{\text{first passage through x},t'}M_{\text{return},t-t'}$. Similarly, to return to the origin in time $t$, one must return to the origin for the first time at some $t'\le t$, and then return to it again in $t-t'$. This gives $M_{\text{return,}t}(\lambda)=M_{\text{first return},t_1}(\lambda)M_{\text{return},t-t_1}(\lambda)$.

Notice that two of these distributions are quite well known to us: the return and the being there distributions. For example, in a 1d DTDS unbiased random walk, the displacement $x$ is just the difference of the number of steps made to the right and to the left. So if one makes the total of $t$ steps, then $(t+x)/2$ of them must be to the right, and $(t-x)/2$ should be to the left (notice that one can have an odd/even $x$ only for odd/even $t$. The probability of every such sequence of steps is $(1/2)^t$, and there are ${t\choose (t+x)/2)}$ such sequences which end at $x$ at time $t$. As a result, the probability of being at $x$ at time $t$ is $P(x|t)= 2^{-t}\frac{t!}{\left(\frac{t+x}{2}\right)!\left(\frac{t+x}{2}\right)!}$. Very similarly, to return to where it started from, the walker must make the same number of steps to the left and to the right, so that the probability of return at time $t$ in 1d: $P(t)=2^{-t}\frac{t!}{\left(\frac{t}{2}\right)!\left(\frac{t}{2}\right)!}$. Now having these two distributions, one can calculate their MGFs, divide the two, and get the MGF for the first passage probability distribution. Similarly, dividing MGFs of two return distributions with different times, gives the MGF of the first return distribution. We won't be doing these calculations explicitly here, but these is how they are done generally. Some of these calculations can be found in the Grinsted and Snell book.

For diffusion rather than walkers, the procedure is very similar, except that the *being there* and the *return* distributions are now given by the Gaussian (rather than combinatorial) expressions for the displacement of the diffusive particle.

The return/passage distributions are very nonintuitive, even in 1d. For example, plot the function $P(t)=2^{-t}\frac{t!}{\left(\frac{t}{2}\right)!\left(\frac{t}{2}\right)!}$ (it is easier to calculate not factorials, but their logs, so that you don't operate with too large of numbers). Notice how slowly this function falls off! Only about as $1/\sqrt{t}$. That is, there is a probability that one will be returning to the origin even a very-very long time into the future. Another way to say this, in agreement with what we mentioned before, is that, in 1d, the particle will be coming back to zero many-many times, before it eventually leaves. You may want to derive the same result for diffusion, rather than DTDS walk -- you should quickly get the same $1/\sqrt{T}$ dependence using the Gaussian form of the diffusive probability.

The analysis of this kind eventually helps us to get the properties of returns, first returns, and first passage, which we mentioned in the previous section, on a solid mathematical footing, namely:

- the mean return times diverge in all dimensions, there's a substantial chance of returning to zero even at very long times;
- probability of eventual return over the entire infinite time is 1 in 1-d and 2-d, and about 0.65 in 3-d.
- probabilities of the first passage in time $t$ are very small when $x^2\gg Dt$; they peak around this value, and fall off with long tails beyond this value.

Note that, for biased walks, situation changes. Look at Grinsted's book, an article by (Bel et al., 2010), or the problem of firing an action potential in one of the previous problems to see the difference.

We will test these predictions with simulations in a homework problem.

### Berg-von Hippel search of the binding site by a transcription factor

Biological systems would like to use diffusive motion for a molecule, like a transcription factor (TF), to find its place (like the binding site on the DNA) -- this uses no energy. But is it effective? For the first time, such diffusive search by a transcription factor was analyzed, as far as I know, in (Berg and von Hippel, 1987; Berg 1981). They considered the following possibilities:

- Pure 1-d search, where the TF binds to the DNA and undertakes a 1-d random walk on the DNA. This is not efficient because very little time is spent on exploration -- the TF keeps coming back.
- Pure 3-d search, where the TF does 3-d diffusion in the cytoplasm until it finds the right binding site, and then binds. This is not efficient either because very few sites are ever explored in 3d, and the TF very likely will not come close to its needed target.

Their suggested solution was that the search proceeds in 1-d/3-d bouts. First the TF moves fast between distant parts of the cell using 3-d diffusion in the cytoplasm, and then it binds to the DNA, and explores a patch of the DNA using 1-d random walk very thoroughly, looking for the right site. If it find the cognate site, is binds to it strongly, if it doesn't, then it unbinds and repeats another cycle of 1-d/3-d search. Mathematical details of such 1-d/3-d search were analyzed by (Slutsky and Mirny, 2004), and we follow their analysis here.

The total search time is the sum of search times in both 1-d nd 3-d modes: $t=n(\tau_3+\tau_1)$, where $n$ is the number of search rounds until the target site is found. In the 1-d part of the search cycle, the protein explores $N_1$ sites before it unbinds. Hence the number of cycles before it finds the target site will be $n\sim M/N_1$, where $M$ is the DNA length, provided that the 3-d part of the search moves the TF far away, so that it almost never comes back to the same patch of the DNA for the 1-d part of the search. Therefore, $t\sim M/N_1(\tau_3+\tau_1)$. However, we also know that $N_1\sim\sqrt{D_1\tau_1}$, where $D_1$ is the 1-d diffusion constant. Therefore, $t\sim\frac{M}{\sqrt{D_1\tau_1}}(\tau_3+\tau_1)$. Is there an optimal time to spend on a 1-d search? Differentiating $t$ w.r.t. $t_1$, we get $t_1=t_3$. Thus the transcription factor should spend about the same amount of time in 1-d and 3-d search modes. Slutsky and Mirny (2004) review experimental confirmations of this.
