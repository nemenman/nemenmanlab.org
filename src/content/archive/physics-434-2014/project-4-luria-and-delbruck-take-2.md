---
title: "Project 4 -- Luria and Delbruck, take 2"
group: "physics-434-2014"
wiki_title: "Physics 434, 2014: Project 4 -- Luria and Delbruck, take 2"
order: 220
---

Back to the [Projects](/archive/physics-434-2014/projects/) page.

Experimental data should be used to find best fit parameters of a model. Read Chapter 6 in the Nelson book, which explains the maximum likelihood and other methods for fitting model parameter to data in detail.

We will use these approach to find the maximum likelihood values and their expected uncertainty for the mutation rate in the Luria-Delbruck experiment. Start with downloading the [experimental data](/archive/files/LDexpt.mat), which has colony counts for two experiments (22 and 23) and the bin boundaries used in these experiments. Create the simulation code for the LD experiment, like what we did in class, which would generate a sample from the distribution of the number of virus-resistant colonies, keeping the same bin boundaries. Run this experiment many times to generate a well-sampled probability distribution of having a certain number of colonies given a fixed value of the mutation rate parameter. Start with the experiment 22 and generate the likelihood score for this particular value of the mutation rate based on the experimental data. Try this for a range of mutation rate values and find the best one. Estimate the confidence interval on this value. Plot the estimated probability distribution for the experimental data, and for the theoretical prediction given your best-fit parameter value. How well do they agree? The experimental probability distribution curve has multiple peaks. Do your simulations reproduce them? Explain these peaks -- in other words, why would there be more counts in bin number 5 and 7 than 4, 6, and 8?

Do the same analysis for the experiment 23. Do the mutation rates in both experiments agree with each other within error bars?
