---
title: "Luria-Delbruck experiment"
group: "physics-434-2014"
wiki_title: "Physics 434, 2014: Luria-Delbruck experiment"
order: 40
---

We've been mentioning the Luria-Delbruck experiment that showed that evolution is Darwinian and not Lamarckian (it acts on standing variation) ever since the first lecture in the class, but we haven't actually discusses this experiment in any detail. Section 4.5 and Problem 4.11 in Nelson's book has a very good discussion of the experiment, and we have followed the discussion in class. I won't be repeating the description of the experiment here.

There are important things to remember about this topic, which I would like to emphasize.

- You can download a simple [Matlab code](/archive/files/LuriaDelbruck.m) that we wrote in class that simulates the Luria-Delbruck distribution of the number of resistant colonies.

- Some [experimental data](/archive/files/LDexpt.mat) of the numbers of resistant colonies can also be downloaded. This has been digitized and saved in Matlab format from the famous Luria-Delbruck paper, available on our web site (thanks to Phil Nelson for doing this!). The data has three rows. The first is the edges of the bins in which we are binning the number of surviving colonies. The second is the counts in each bin for experiment 22, and the third is the counts for the experiment 23.

- Let's be very careful about the precise wording of the hypotheses being tested in this experiment.

  - (Darwin) Rare mutations may happen all the time, and selection then acts to chose the individuals with advantageous rare mutations.
  - (Lamarck) Rare mutations may happen in response to environmental pressures

  Note that neither case says that the mutations *will* happen -- they may or may not happen. The mutation rates clearly have to be different in both cases if we have to have the total number of mutations in a population matching some experimental observations. Since in the Darwinian picture mutations happen always, this spontaneous mutation rate should be lower than the induced mutation rate in the Lamarckian case, where mutations happen only during stress. Still, even at stress, Lamarcian mutations are still very rare if we are to treat them using the Poisson approximation.

- Note how important outliers can be! If something doesn't make sense, don't just throw it out. Think about it!
