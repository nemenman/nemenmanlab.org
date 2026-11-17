---
title: "Introduction"
group: "physics-380-2010"
wiki_title: "Physics 380, 2010: Introduction"
order: 10
---

## Lecture 1

- Welcome
- Details and expectations
  - We will schedule two 2-hour office hour/supplementary instruction sections
  - Very mathematical course, but we will create an infrastructure for you to succeed
  - Starting October, we will be devoting about one class every two weeks to students presenting journal papers. I will provide you with a list of papers to choose from by mid-September.
  - Homeworks will be due by end of the day on Fridays.
- The main questions to be asked in the whole course:
  - **How do we measure fidelity of information processing and what is it for various biological systems?**
  - **Which strategies can be used by the systems to improve the quality of processing?**
- Intro to *E. coli* chemosensing
  - *E. coli* is small -- natural measuring stick. See *Sizing up E coli* section in *Physical Biology of the Cell* -- see below.
  - Can have as few as one or even less of molecules of a chemoattractant in a volume the size of *E. coli*
  - Still, even with these concentrations, *E. coli* can follow chemoattractants (Adler 1975, Budrene and Berg, 1991, 1995)
  - The flagella and the run/tumble strategy of *E. coli* motion. See movies at <http://www.rowland.harvard.edu/labs/bacteria/movies_ecoli.html>
  - The basic structure of the *E. coli* chemotaxis signaling pathway. See <http://www.rowland.harvard.edu/labs/bacteria/projects_fret.html>
- Intro to vertebrate photoreceptor signal detection
  - The structure of vertebrate photoreceptors. <http://en.wikipedia.org/wiki/Photoreceptor_cell>
  - A few words on rhodopsin and transducin. <http://en.wikipedia.org/wiki/Rhodopsin>
  - Is one photon a lot or not? How many do we typically get?
  - Basic signaling pathways of vertebrate photoreceptors (Detwiler et al., 2000)
- **Main point to carry out: Biological signal processing is not deterministic**, hence we will spend the next lectures on some basic probabilistic concepts

## Homework (due Sep 3)

In class, we have discussed certain simple sensory systems, but I left open a lot of blanks. Let's fill them in. Notice that the papers I refer to should be considered a starting point for your reading, and, while they will be sufficient to answer the questions I am asking, you may need to go much deeper than these few papers.

1.  First, let's do some estimates to get the feel for the problems that the organisms experience.
    - For *E. coli*, calculate how many molecules of a ligand one should expect to see in a volume of the bacterium for the ligand concentrations between 1nM and 1 mM. Search for the relation between diffusivity and viscosity for a spherical particle (this is often known as Einstein or Einstein-Stokes relation) <http://en.wikipedia.org/wiki/Einstein_relation_(kinetic_theory)>, and, knowing the viscosity of water, 1 mPa\*s at 20 C, estimate the diffusion coefficient of a biological molecule of 1nm in diameter. How long will such molecule stay in the vicinity of an *E. coli*? Armed with the viscosity of water, calculate how long will it take for a bacterium moving at 20 um/s to stop once its propulsion mechanism stops. How far will it travel over this time? Let's assume the bacterium is a sphere of a radius 1um. *For adventurous, I recommend that you read the*Physics at low Reynolds number*article by Purcell (find it below)*.
    - For a photoreceptor, come to a mirror and estimate your pupil size. Search online, <http://en.wikipedia.org/wiki/Photoreceptor_cell>, for the number of photoreceptors in the human retina and their size and distribution over the retina. Do these numbers make sense? That is, recall your Physics 142 and calculate the diffraction limit for resolving a point light source that emits at 500nm wavelength. How does this compare to the size of vertebrate receptors? Now, let's estimate the number of photons that hit a typical photoreceptor per second during bright daylight. Make sure you understand that we don't routinely look directly into the sun. Use (Stavenga, 2004) to estimate the zenith photon flux. Keep in mind that a single photoreceptor absorbs photons of wavelength that fall within a window of about 100nm around its preferred frequency). *For more adventurous among you: What is this number when we look at an arbitrary point in the middle of the night? The following abstract may be of use <http://tinyurl.com/22qdxnk>.* For normal individuals, periods of eye fixation (about 200 ms) are followed by rapid eye movements (saccades), <http://en.wikipedia.org/wiki/Saccade>. Even during a fixation, the eye drifts, often by as much as tens of photoreceptors, and it also jitters by about a size of one photoreceptor with a high frequency (we will leave the latter phenomenon aside for now). Assume that you can resolve a bright spot on a dark background if it is as small as a single photoreceptor. How fast will this spot slide across one photoreceptor, changing the light intensity that it views. This sets a limit on how fast the photoreceptors have to perform. How many photons does a typical photoreceptor receive over this time scale at the light levels discussed above?
2.  Let's also fill in some biochemistry blanks.
    - Reproduce the *E. coli* chemotaxis pathway signaling diagram and learn the names of the associated proteins, <http://www.rowland.harvard.edu/labs/bacteria/projects_fret.html>. What do these proteins do? *For an adventurous among you, I suggest you also look at the chemotaxis in*B. subtilis*(Rao and Arkin, 2004; Rao et al., 2008). Are the general motifs of the network similar? What is the difference? Can you venture a guess for why it is there?* Also think about the *D. discoideum* chemotaxis (Franca-Koh et al., 2006; Rappel et al., 2002). This cell is about 10um across, and uses a very different mode of chemotaxis. Do you understand why the difference?
    - In class, we wrote down a model of a *generic* photoreceptor. There are no such things as a generic photoreceptor, and the sloppy description I used is precisely why some biologists don't take (theoretical) physicists seriously. So let's correct the errors and make sure we know the biology we are talking about. Let's learn a bit more about specific receptors: vertebrate photoreceptors (http://en.wikipedia.org/wiki/Photoreceptor_cell): rods (Rieke and Baylor, 1998) and cones (Detwiler et al., 2000), and some invertebrate photoreceptors (Pumir et al., 2005). Find, draw, and learn the signaling pathways diagram of these different receptors. Also notice that their physical structure and organization in the eye is very different. For example, photoreceptors is some insects, such as bees, allow them to detect polarized light (http://www.polarization.com/eyes/eyes.html, Cronin et al., 2003). Why would this be of use?
