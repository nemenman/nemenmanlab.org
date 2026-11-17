---
title: "Homework 10"
group: "physics-434-2015"
wiki_title: "Physics 434, 2015: Homework 10"
order: 120
---

Please turn on the assignment either as a PDF file to me by email, or as a printout/writeup to my mailbox in physics. Detailed derivations (with explanations) and calculations must be present for the problems for full credit. Submit your code if a problem requires you to program.

This week, the same homework for all students.

1.  Let's explore the channel coding theorem (and also learn how to do optimization in Matlab and Octave). Suppose we have the following molecular information processing channel: for any number of molecules on the input $x$, the channel output $y$ is a Poisson variable with that mean (this is relevant to Ziv et al, 2007, which was discussed by Martin in one of the lectures). That is, $P(y|x)=\frac{x^ye^{-x}}{y!}$. Write a code to estimate the mutual information over this channel for an arbitrary distribution of the (discrete) input signal. Use the input distribution as an input to the function you write. Explore different input distributions, assuming that the number of input molecules is between 0 and 64. What are the general features of the input distribution that achieve higher mutual information? Recall that Ziv et al. have shown that you should be able to send $1/2\log_2 \bar{N}\approx 1/2 \log_2 64/2=2.5$ bits through this channel. Can you find a distribution that allows you to send close to these $\approx 2.5$ bits? Submit plots of your "most informative" distributions.
2.  We briefly touched on using mutual information to choose optimal reduced models for the data. Consider now three neurons: X, Y, Z. We need to understand if both X and Y project into Z and affect its spiking. Further, if both affect Z, we need to understand how big of an error we make by neglecting one of the projections. Download the following simulated [neural spiking data](/archive/files/Neural-3neurons.mat). In this file, you will find a variable *spikes*, which is 3x1e4 in size. The rows are the activities of each of the neurons, and the columns are the time steps. Each entry in the matrix tells us how many times a particular neuron has fired in a particular time step. Estimate the mutual informations among the neurons and answer the two questions above.
