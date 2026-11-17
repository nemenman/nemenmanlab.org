---
title: "Lecture 13"
group: "physics-380-2011"
wiki_title: "Physics 380, 2011: Lecture 13"
order: 150
---

This is the last lecture in the information theory block.

## In-class presentation

A student presents the article by Pedraza and van Oudenaarden, 2005.

## Warmup question

I am showing you a diagram of cellular information processing pathways of certain kind (MAPK pathways -- more on them later) courtesy of Jim Faeder (U Pittsburgh). We know how to measure the amount of information that travels along these pathways -- need to estimate mutual information between the quantities of interest. But can information-theoretic ideas also help us understand which of these pathways contribute more to the information processing than the others and, therefore, need first attention?

## Main lecture

1.  Information theory provides a measure for characterization of quality of input output relations. But in addition, due to the data processing inequality, it also provides ways of unambiguously reducing dimensionality of the modeled biological system.
    - Indeed, say we have a large-dimensional signal $\vec{s}$ and response $\vec{r}$. There's a certain mutual information between these $I[\vec{s};\vec{r}]=I_0$. If we propose a reduction of the signal and response to $f=f(\vec{s}),g=g(\vec{r})$, then $I[f;g]\le I[\vec{s};\vec{r}]$ by the data processing inequality.
2.  We can, for example, solve the problem like: Which inputs are informative of the outputs (and hence need to be accounted for in a model)? We omit different subsets of the inputs $s_i$, calculate $I[\vec{s}-s_i;\vec{r}]=I_{\not i}$, and calculate the error due to omitting this signal $\Delta_i=\frac{I_0-I_{\not i}}{I_0}$. Those components that have a small $\Delta_{\not i}$ can be safely neglected. This type of analysis can be used, for example, to understand which features of the neural code are important. In the subsequent presentation by Farhan, we will hear about using this trick to understand if high precision of neural spikes is important or not.
3.  We have discussed the problem of lossless coding earlier in the class. What if one is willing to transmit the message with errors, but still wants to reconstruct the message with a small loss. This is Shannon's rate distortion or lossy coding theorem. A good place to look this up is the book by Cover and Thomas.
    - Suppose there's a loss function $d(x,x')\ge0$ for recovering a value of signal $x'$ when, in fact, it should have been $x$.
    - One can encode the signal as $P(x'|x)$, and the amount of bits one would need to store this encoding would be $I[x;x']$.
    - The average loss experienced would be $<d(x,x')>=\int dx\, dx' P(x)P(x'|x) d(x,x')$.
    - We are interested in the shortest, the most compressed encoding, $I[x;x']\to0$, and yet we want to have the smallest loss as well $<d(x,x')>\to0$. We can choose then to minimize $L=I[x;x']+\lambda <d(x,x')>$, where $\lambda$ is an arbitrary constant that controls how much we value compression over quality (think different bitrates in the mp3 coding).
    - We minimize $L$ over all $P(x'|x)$. This can only be done numerically, but there are effective algorithms (namely, Blahur-Arimoto algorithm described in the Cover and Thomas textbook) to do this.
4.  In some cases, it is unclear how to define $d$. But maybe instead there's the following setup.
    - We observe $x$, and compress it to $x'$ by $P(x'|x)$. However, we really care not about $x$ but about some other *relevant* variable $y$, given by $P(y|x)$.
    - With compression, $P(y|x')=\sum_x P(y|x)P(x|x')=\sum_x P(y|x)\frac{P(x,x')}{P(x')}=\sum_x P(y|x)\frac{P(x'|x)P(x)}{\sum_x P(x'|x)P(x)}$.
    - We can now maximize the information the compressed variable has about the relevant variable, while maximizing the compression itself. That is, we want to maximize $L=I[x';y]-\lambda I[x;x']$, where $\lambda$ is again a control parameter.
    - This should also be done numerically with the same Blahut-Arimoto algorithm. This approach is know as the Information Bottleneck method (see Tishby et al., 2000).
