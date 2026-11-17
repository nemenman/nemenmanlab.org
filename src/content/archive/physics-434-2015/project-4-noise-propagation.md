---
title: "Project 4 -- Noise Propagation"
group: "physics-434-2015"
wiki_title: "Physics 434, 2015: Project 4 -- Noise Propagation"
order: 160
---

We have talked to some extent about stochasticity in gene expression in cells. However, genes do not exist individually -- they are parts of large genetic regulatory networks. Thus a noise in the expression of one gene will affect the expression of another, which will contribute its own noise to the system. The second gene will affect the third, and so on -- the noises propagate. In this project, we will study how noises accumulate during such propagation.

You should start with carefully reading an understanding the following papers: Elowitz et al., 2002; Pedraza and van Oudenaarden, 2005; Ziv et al., 2007; and Paulsson, 2004. Make sure you understand the distinctions between the extrinsic noise and the intrinsic noise. Now let's explore how noises propagate through the network based on the work of Pedraza and van Oudenaarden.

Set up a simulator of the transcriptional cascade in the figure 1A. Skip the proteins, and assume that mRNAs perform regulation directly. While the analysis in the paper treated the system in the Langevin fashion, which allowed for an analytical progress, I am asking you to set up a Gillespie simulator instead. Use the parameter values reported in the paper and its online supporting information. Reproduce the analytical curves in fig 2 and 3C using your Gillespie simulations. Change parameters of your model and explain how the copy number of molecular species and the relative rates of degradation of upstream and downstream molecular species influence the noise propagation.

Now relate the variance/covariance curves you plotted to the amount of information transmitted through this system. That is, sample well the joint probability distribution of the IPTG concentration and the expression of genes 0 through 3, and evaluate the mutual information of such a distribution. Plot the information vs various parameter values and see when the information is maximized. Explain.
