---
title: "Lecture 14"
group: "physics-434-2012"
wiki_title: "Physics 434, 2012: Lecture 14"
order: 140
---

Good lecture notes on the subject are in Bialek's draft textbook, version 2011.

## Warmup question

1.  *E. coli* and many other bacteria exhibit a phenomenon of persistence, so elegantly studied in Balaban et al., 2004. Briefly bacteria may choose to switch from a growing to a non-growing phenotype, when they are less sensitive to effects of antibiotics and *persist* through antibiotic applications. This is advantageous when antibiotics are applied, but they don't grow in the persistent state, making it a loosing choice when there are no antibiotics. Leaving aside the issue of how they actually switch (we will study a related problem a bit later in class), can you predict what should the bacterial strategy be in choosing whether to divide or not to divide? Which considerations should enter the bacterial decision?

## Main Lecture

### Population biology

- Once switched, a bacterium remains committed to the state for a while. We will discretize the time and consider the bacterium in making a choice 0 (growing) and 1 (persistent) once per time step. The time step is much longer than the switching time and the division/death time of a single bacterium.
- Each time step does (1) or doesn't (0) have an application of an antibiotic, and the bacterium can be in the persistent (1) or the growing state (0).
- For the state of bacteria and the world $[bw]=\{[00],[01],[10],[11]\}$, at the end of the time period, the number of the bacteria will be multiplied by the growth rate of the bacteria, which we call $\alpha_{bw}$. We choose $\alpha_{00}=\alpha^{(0)}$ -- growth in unhindered conditions; $\alpha_{01}=0$ -- growing bacteria die in antibiotic world; $\alpha_{10}=\alpha_{11}=1$ -- persistent bacteria persist in the world that either has or doesn't have the antibiotics.
- We suppose that $P(w=1)=p$ (antibiotic probability), and $P(w=0)=1-p=q$.
- If the bacterium can sense presence/absence of antibiotics and switch appropriately, then for $\alpha^{(0)}>1$ the bacterial growth rate in a single time step is $\bar{\alpha}=\alpha^{(0)}(1-n_i)+n_i$, where $n_i=(0,1)$ is a random variable describing if antibiotics is present or absent in this time step. Over many trials, the population if $K_0$ individuals at the beginning will grow as $K(N)=K_0\prod_{i=1}^N\left[\alpha^{(0)}(1-n_i)+n_i\right]=K_0\prod_{i=1}^N 2^{\left[(1-n_i)\log_2\alpha^{(0)}+n_i\right]}=K_02^{\Lambda_{\rm best} N}$.
- The growth rate $\Lambda_{\rm best}=\frac{1}{N}\sum \left[(1-n_i)\log_2\alpha^{(0)}+n_i\right]$. By the central limit theorem, $\frac{1}{N}\sum n_i\to p$. Thus $\Lambda\to (1-p)\log_2\alpha^{(0)}+p$. This is the fastest possible growth rate. However, as argued by Kussel and Leibler (2005), sensing the environment is resource-consuming and might not be useful in all situations, and the bacteria might instead prefer to switch randomly, hedging their bets, rather than sensing.
- Suppose that the bacterium is going to switch randomly at the beginning of every time step. The fraction $f$ of the population will be in the persistent state, and $1-f$ in non-persistent. The actual state of the world will be $n_i$. Then the growth rate of the colony at time step $i$ is $\alpha_i= \alpha^{(0)}(1-f)(1-n_i)+f=\left[\alpha^{(0)}(1-f)+f\right](1-n_i)+fn_i=2^{(1-n_i)\log_2\left[\alpha^{(0)}(1-f)+f\right]+n_i\log_2 f}$. After $N$ time steps, the whole population is $K(N)=K_0 \prod_{i=1}^N 2^{(1-n_i)\log_2\left[\alpha^{(0)}(1-f)+f\right]+n_i\log_2 f} \equiv K_0 2^{\Lambda N}$.
- $\Lambda =\frac{1}{N}\sum_i \left\{(1-n_i)\log_2\left[\alpha^{(0)}(1-f)+f\right]+n_i\log_2 f\right\}$. By central limit theorem $\frac{1}{N}\sum n_i\to p$. Thus $\Lambda\to (1-p)\log_2\left[\alpha^{(0)}(1-f)+f\right]+p\log_2 f$.
- To find the optimum fraction of bacteria that should choose to be persistent at any time, we maximize the growth rate $\Lambda$. We do $\partial \Lambda/\partial f$. Solving the ensuing equation, we get for the optimal $f$ $f_0=\min\left\{\frac{p\alpha^{(0)}}{\alpha^{(0)}-1}, 1\right\}$.
- $f_0$ is proportional to $p$ -- special case of matching, see Gallistel et al. 2001.
- When $\alpha^{(0)}<1/(1-p)$, that is, the maximum growth is not too fast, $f_0=1$ -- it makes sense not to hedge bets and always stay in the persistent state.
- Plugging the result into the growth rate formula (for large $\alpha^{(0)}$), we get:$\Lambda_{\rm max}= \Lambda_{\rm best}- S[p] -p(1-\log_2(\alpha^{(0)}/(1-\alpha^{(0)})$. Note that the growth rate decreases by $S[p]$, the amount of what the bacterium doesn't know about the world. The amount of information about the outside world is actually important in the evolutionary sense: if you know the world, you multiply faster.

### Building effective models

- Information theory provides a measure for characterization of quality of input output relations. But in addition, due to the data processing inequality, it also provides ways of unambiguously reducing dimensionality of the modeled biological system.
- (Indeed, say we have a large-dimensional signal $\vec{s}$ and response $\vec{r}$. There's a certain mutual information between these $I[\vec{s};\vec{r}]=I_0$. If we propose a reduction of the signal and response to $f=f(\vec{s}),g=g(\vec{r})$, then $I[f;g]\le I[\vec{s};\vec{r}]$ by the data processing inequality.
- We can, for example, solve the problem like: Which inputs are informative of the outputs (and hence need to be accounted for in a model)? We omit different subsets of the inputs $s_i$, calculate $I[\vec{s}-s_i;\vec{r}]=I_{\not i}$, and calculate the error due to omitting this signal $\Delta_i=\frac{I_0-I_{\not i}}{I_0}$. Those components that have a small $\Delta_{\not i}$ can be safely neglected. This type of analysis can be used, for example, to understand which features of the neural code are important. In the subsequent presentation by Farhan, we will hear about using this trick to understand if high precision of neural spikes is important or not.
- The ARACNE algorithm.
