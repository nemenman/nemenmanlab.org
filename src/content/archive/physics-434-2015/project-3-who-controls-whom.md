---
title: "Project 3 -- Who controls whom?"
group: "physics-434-2015"
wiki_title: "Physics 434, 2015: Project 3 -- Who controls whom?"
order: 150
---

One often is faced with a question of understanding patterns of regulatory interactions in data: which neuron or gene regulates the activity of another? Because information-theoretic quantities are, by construction, independent of reparameterizations of data, they are often used in such analyses. In these project, I would like you to think about what kind of signatures would be introduced by dependences in multivariate data, and to use these ideas to reconstruct the interaction structure in a synthetic data set, and then in experimental biological datasets.

It would be beneficial for you to carefully read and understand the following papers for this project: Margolin et al., 2006, 2010; Wang et al., 2009; Cheong et al., 2011, as well as others related to network reconstruction.

First download the following simulated [neural spiking data](/archive/files/Neural-3neurons.mat). This has the sequence of activities of three neuron, X, Y, Z. We need to understand if both X and Y project into Z and affect its spiking. Further, if both affect Z, we need to understand how big of an error we make by neglecting one of the projections. In this file, you will find a variable *spikes*, which is 3x1e4 in size. The rows are the activities of each of the neurons, and the columns are the time steps. Each entry in the matrix tells us how many times a particular neuron fired in a particular time step. Estimate various mutual informations among the neurons (one neuron about another, two neurons about the third). Also generalize mutual information to the case of three variables (called multi information), and estimate that as well. How should all of these quantities relate to each other?

Notice that estimating information from data is not easy, as estimating the frequencies and then taking the empirical averages of their logarithms produces biased results. To see this, estimate entropies from subsets of data of different length: 10, 100, 1000, 10000 data points. Look at the trends -- how would such a bias manifest itself? Here it might be worthwhile reading paper Strong et al., 1998, and Nemenman et al., 2004. How would you verify that your estimated value is unbiased?

Now armed with these preliminary analyses, download the [file of experimental neural data](/archive/files/Neural-calabrese.txt) (thanks to Ron Calabrese). This is the activity of six neurons in a leech heart. Can you analyze the data and understand the wiring diagram of this neural circuit? Who controls whom? Notice that this is an open-ended problem, and I don't know the answer myself.
