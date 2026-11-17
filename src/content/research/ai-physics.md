---
title: "AI for Physics / Physics for AI"
order: 1
image: "../../assets/research/ai-physics.jpg"
imageAlt: "Trajectories of interacting particles, with two particles labeled i and j highlighted"
questions:
  - "What is the theory behind how AI learns, and how do we design AI systems that work well for learning in the physical world?"
teaser: "What is the theory behind how AI learns, and how do we design AI systems that work well for learning in the physical world?"
projects:
  - title: "Data-driven discovery of multicomponent plasma fluid dynamics"
    detail: "DOE Genesis Mission, with J. C. Burton, 2026–2027"
  - title: "Bridging the gap between particle-based and continuum hydrodynamic descriptions of dusty plasma"
    detail: "NSF PHY 2409416, with J. C. Burton, 2024–2027"
  - title: "Simons Investigator in Theoretical Physics in Life Sciences"
    detail: "Simons Foundation, 2021–2031"
people:
  - "paarth-gulati"
  - "marco-li"
  - "sean-ridout"
  - "cagdas-kilic"
---

Modern AI systems learn from data with remarkable success, yet we still lack a theory that explains when and why they work. We approach this question with the tools that physics developed for understanding complex systems, statistical physics and information theory. One thread of our work asks what makes a good representation of data. We showed that a single information-theoretic principle, the [multivariate information bottleneck](https://arxiv.org/abs/2310.03311), generates most variational dimensionality reduction methods and suggests new, more data-efficient ones. We also build machine-learning estimators of mutual information and use them to measure the dimensionality of data.

The second thread designs AI systems that learn well in the physical world. Building known physical structure, such as symmetries, into a learning machine lets it infer interpretable laws from experimental data. Applied to three-dimensional imaging of dusty plasmas, such [physics-tailored machine learning](https://doi.org/10.1073/pnas.2505725122) inferred the forces between particles and discovered unexpected physics of particle charging and interactions, work recognized with the 2025 Cozzarelli Prize. We are now extending this approach to the fluid dynamics of multicomponent plasmas. This builds on our earlier work on [automated inference of dynamical models](https://doi.org/10.1038/ncomms9133) from data, which yielded [predictive and interpretable models of escape behavior](https://doi.org/10.1073/pnas.1816531116) in the worm *C. elegans*. It also builds on [predictive information](https://doi.org/10.1162/089976601753195969), a measure of how much any learner can extract from a data stream.
