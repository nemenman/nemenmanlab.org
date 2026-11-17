---
title: "Project 1"
group: "physics-434-2016"
wiki_title: "Physics 434, 2016: Project 1"
order: 140
---

## Autoregulation in bacterial gene expression

Genes in living cells are transcribed into messenger RNA (mRNA), which are later translated into proteins. In a famous paper by Rosenfeld et al., 2002, the author measured the expression of a protein in a single cell. The protein was a transcription factor, namely an inhibitor, which inhibited its own mRNA production by binding upstream of the gene and blocking transcription (consider the promotor to be on/off, and not expressing when off, and expressing with some rate when on). The produced mRNA is then degraded with the first order rate $\mu_m$. The protein is produced from mRNA in a linear fashion with the rate $a$ per mRNA molecule, and it's degraded linearly as well (but with the rate $\mu_p$ distinct from mRNA). Develop the model of the protein and mRNA dynamics in this cell (both deterministic model and the stochastic model based on the Gillespie simulation). The data from the paper can be found in [this file](/archive/files/Protein.txt) (the file contains two columns -- the first are the time points in units of bacterial cell cycle time, and the second are protein concentrations in arbitrary units). In this experiment, the initial concentration of the mRNA and the protein were zero. Fit this data for the parameters in your model (note that the data is in arbitrary units, and thus not all parameters of your model would be inferable). Can you explain the oscillations on the way to the equilibrium? Think if you can help your fitting routine by fitting simple relations to different regimes of the experimental curve first, and then use these manually fitted parameter values as inputs to automated fitting. Report the final fitted parameter values. Do they make sense given what you know about bacterial cells?
