# Introduction to qbio

[TOC] 

## Organisation

1st semester - 5 ECTS - 40 hours in the class. 

The majority of classes will not be "standard" lectures. Interaction will be privileged (learning by peers, Rolling boards,... )

Students will have to develop 4 compulsory projects (to be evaluated), plus one at choice.



### Tentative timetable

Slots are usually 1.5h long.

| Date         | Day  |   #hours | Starting Time | Subject                                                      | Where |
| :----------- | ---- | -------: | ------------- | ------------------------------------------------------------ | ----- |
| 16 September | Thu  |      1.5 | 1:15-2:45     | Introduction and course organisation (LC)                    | CBS   |
| 16 September | Thu  |      1.5 | 3:00-4:30     | Presentation of methodology and Jupyter labs (30'). Basics of image processing (1h). | CBS   |
| 21 September | Tue  |      1.5 | 8:00-9:30     | Modelling tools: ODE (LC)                                    | CBS   |
| 21 September | Tue  |      1.5 | 9:45-11:15    | Modelling tools: Stochasticity and simulations  (LC)         | CBS   |
| 23 September | Thu  |      1.5 | 3:00-4:30     | (LC)                                                         | CBS   |
| 23 September | Thu  |      1.5 | 4:45-6:15     | (LC)                                                         | CBS   |
| 24 September | Fri  |      1.5 | 3:00-4:30     | Introduction to fluorescence microscopy (1h - EM). Advanced Imaging Systems 1 : TIRF microscopy (30' - MN). | CBS   |
| 28 September | Tue  |      1.5 | 8:00-9:30     | (LC)                                                         | CBS   |
| 28 September | Tue  |      1.5 | 9:45-11:20    | Advanced Imaging Systems: Confocal (30') /SMLM (1h).         | CBS   |
| 30 September | Thu  |      1.5 | 1:15-2:50     | Introduction to genome biophysics (30'). DNA supercoiling (1h). | CBS   |
| 30 September | Thu  |      1.5 | 3:00-4:30     | (LC)                                                         | CBS   |
| 5 October    | Tue  |      1.5 | 8:00-9:30     | (AA)                                                         | CBS   |
| 5 October    | Tue  |        1 | 9:45-10:45    | AFM                                                          | CBS   |
| 7 October    | Thu  |      1.5 | 1:15-2:50     | Nucleosomes (30'). Histone modifications (30'). DNA machines (30'). | CBS   |
| 7 October    | Thu  |      1.5 | 3:00-4:30     | (AA)                                                         | CBS   |
| 7 October    | Thu  |      1.5 | 4:45-6:15     | (LC)                                                         | CBS   |
| 12 October   | Tue  |      1.5 | 8:00-9:30     | (LC)                                                         | CBS   |
| 12 October   | Tue  |      1.5 | 9:45-11:20    | DNA origami (30') by Gaetan Bellot. Optical Tweezers (30') by Ashley Nord. | CBS   |
| 15 October   | Fri  |      1.5 | 3:00-4:30     | (PEM)                                                        | CBS   |
| 19 October   | Tue  |      1.5 | 8:00-9:30     | Advanced Imaging Systems: 3D-SIM and STED (30'). Fluctuation microscopies (1h). Genome Biophysics: Transcription factors I (30'). | CBS   |
| 19 October   | Tue  |      1.5 | 9:45-11:20    | Transcription factors II and protein diffusion by spt-PALM (45'). Talk by W. Bourget (45') | CBS   |
| 21 October   | Thu  |      3.0 | 1:15-4:30     | (PEM)                                                        | CBS   |
| 21 October   | Thu  |      1.5 | 3:00-4:30     | Higher-order chromatin structure  (1h). Loop extrusion (30'). | CBS   |
| 22 October   | Fri  |      1.0 | 9:45-11:15    | Multiplexing methods (1h)                                    | CBS   |
| 22 October   | Fri  |      1.5 | 11:30-1:00    | (LC)                                                         | CBS   |
| 28 October   | Thu  |      1.5 | 3:00-4:30     | (PEM)                                                        | CBS   |
|              |      | **40.0** |               |                                                              | CBS   |



### Evaluation

Evaluation by projects (compulsory 5*20%).



## Bibliography (books only)

1. *An introduction to Systems Biology*, Uri Alon
2. *Physical Biology of the cell*, R. Phillips et al.
3. *Cell biology by the numbers*, R. Milo and R. Phillips
4. *Biological Physics: Energy, Information, Life*, Philip Nelson
5. *Random Walks in Biology*, Howard
6. *A first course in Network Science*, F. Menczer, S. Fortunato and C. A. Davis
7. *Network Science*,A.L Barabasi, available on line http://networksciencebook.com/



## Tentative program

(In parenthesis the number of hours, 1 lecture is 1.5h)

[AA= Andrea Apolloni (CIRAD); EM = Emmanuel Margeat ; LC = Luca Ciandrini; LCo = Luca Costa ; MN = Marcelo Nollmann; PEM = Pierre-Emmanuel Milhiet]



### What is quantitative biology? (1h - LC) 

Explain the course, introduce the teachers, projects, evaluation. Outline the course. Robustness and optimality. Quantitative reasoning, not just in biology but in everyday's life.

#### Homework: *How many litres of water do you use each day?*

Give an estimate of how many litres of water per day you consume following your lifestyle.

*Objective:* learn how to look for data, how to analyse, present and discuss them. 

*Time:* 1-2 weeks

*How:* Discord during the week, written report (2 pages max), Jupiter notebook. Quickly discuss the outcomes the week later. 

*Evaluation:* not compulsory, to be discussed.  

*Outline:*

- Start by estimating how much water you use for a shower, brushing your teeth, flushing the toilet,... other? 

- Look for the average European (and worldwide) per day consumption and compare with yours.

- Is that it? What about cooking? How is your diet affecting the amount of water used for your lifestyle?

- Estimate the amount of water (and the extension of the land) that was necessary to produce your typical meal. 

- Is it sustainable worldwide? Discuss and conclude.

  

---

### Biology meets mathematics and physics: modelling toolbox (4h - LC)

In this block we want to introduce a few different modelling approaches, and in particular emphasise the difference between deterministic and stochastic modelling. Those notions are relevant to the Synthetic Biology and Practical Modelling UEs.

*Objectives:*

1. Understand, formulate and analyse mathematical models based on ODEs, with basic analytical tools and numerically.
2. Grasp the difference between deterministic and stochastic processes and being able to describe the notion of noise.
3. Simulate a simple stochastic process (Gillespie algorithm) and compare to its deterministic variant.
4. Understand a model based on PDEs.

READING: D.J. Wilkinson, *"Stochastic modelling for quantitative description of heterogeneous biological systems"*, Nature Reviews (2009) [doi:10.1038/nrg2509](doi:10.1038/nrg2509)

#### Modelling with Ordinary Differential Equations (2h)

##### Project: `Solving ODE (pencil and computer) `

The idea is to build this Lab on the Toggle Switch.

*Objective:* Sketch a model based on ODE, simple solving techniques. Sketching Solutions in 2D: Phase Plane, Vector Field, Nullclines. Solve your system of equations with Python. 

*Time:*  During the class? Demonstration by the teacher?

*How:*  Jupyter notebook, step-by-step.

*Evaluation:* not evaluated? 

*Outline:* To be done



#### Stochastic processes and Noise (1.5h)

##### Project: `Gillespie Algorithm  `

*Objective:* Introduction to Monte Carlo methods. Understanding the concept of noise, learn how to simulate a stochastic biochemical reaction. Distributions, coefficient of variation (and similar).

*Time:* During the class? Demonstration by the teacher?

*How:*  Jupyter notebook, step-by-step

*Evaluation:* not evaluated

*Outline:* To be done



#### Modelling with Partial Differential Equations (0.5h)

Very brief interlude. Revise the concept of partial derivatives, in particular make the link to diffusion (macroscopic). 



---

### Random walks in Biology (3h - LC) 

We will first give an overview of the theory and some biological examples, that will then be used in the introduction "Basics of microscopy" and "Genome Biophysics" parts.

#### Random Walks (1.5h - LC)

*Objective:* Give the basics of Random Walks in biology and emphasise the relation with the diffusion equation.

*Time:* During the class.

*How:*  Lecture with learning by peers and Jupyter notebook for step-by-step, visualisation of the lecture's concepts.

#### Random Walk models of polymers (1.5h - LC)

*Objective:* Understand the derivation and properties of the Freely Jointed Chain (FJC) and worm-like (WL) models.

*Time:* During the class.

*How:*  Lecture with learning by peers and Jupyter notebook for step-by-step, visualisation of the lecture's concepts.

*Evaluation:* not evaluated



### Basics of microscopy (7h - MN/EM)

#### Basics of image processing (1.5h - MN)

*Objectives:*

- Basic principles of image manipulation in python
- Methods for detecting objects using image processing and artificial intelligence

*Time:* Constructs are run by students beforehand, and discussed with teacher during class.

*How:*  Jupyter notebook, step-by-step

   1. [Learn how to load images](constructs/UE_Introduction/Load_image.ipynb)
   2. [Learn how to manipulate images](constructs/UE_Introduction/Basic_image_processing.ipynb)
   3. [Image processing-based segmentation](constructs/UE_Introduction/Segmentation_masks_imageAnalysis.ipynb)
   4. [AI-based segmentation](constructs/UE_Introduction/AI_segmentation.ipynb) 

*Evaluation:* not evaluated

*Outline:*
-  You will start by following the constructs to load images and learn the basics of image manipulation.
- You will learn then how to segment an image of nuclei within a Drosophila embryo using conventional image segmentation methods, such as thresholding and watershed.
-  Finally, you will learn how to apply artificial intelligence based (deep learning) algorithms to segment an image of nuclei within a Drosophila embryo.

#### Introduction to fluroescence microscopy (1h - EM)

*Objectives: *

      1. principles of fluorescence
      2. labeling methods
      3. widefield microscopy

*Time:* Constructs to be learnt beforehand, discuss construct content with teacher during class (1h).

*How:*  Jupyter notebook, step-by-step

1. [Widefield fluorescence_microscopy](constructs/UE_Introduction/Fluorescence_microscopy.ipynb)

*Evaluation:* not evaluated

*Outline:* 

- Learn the basics of luminescence/fluorescence (Jablosky diagram)
- Learn about the existing methods for labeling biological molecules, and the relative advantages of each of them
- Learn about filters and dichroics, sources and cameras.
- Learn how a widefield microscope is built.
- What is the intrinsic resolution of a widefield microscope.

#### Advanced imaging systems (1h - MN)

*Objectives:*

- Discover more sophisticated imaging techniques that enable background removal.
- Understand when to apply each method.
- Understand the physical principles behind these methods

*Time:* Constructs to be learnt beforehand, discuss construct content with teacher during class (1h).

*How:*  Jupyter notebook, step-by-step
   1. [TIRF microscopy](constructs/UE_Introduction/TIRF_microscopy.ipynb) 
   2. [Confocal microscopy](constructs/UE_Introduction/confocal_microscopy.ipynb)

*Evaluation:* not evaluated

*Outline:*
- Follow video lecture on total internal reflection microscopy underlying the basic principles of the method and when to apply it, and answer questions to make sure you understand the basic concepts.
- Calculate the depth of field in a widefield and a TIRF image. Compare and conclude.
- Measure the resolution of diffraction limited spots
- Follow tutorial on confocal microscopy: how are fluorophores excited? how are images build? what kind of detectors are used? How do you scan the sample? What is a pinhole for?
- Calculate the excitation profile of a confocal microscope and compare to widefield excitation
- Estimate the 3D resolution in confocal and compare to widefield microscopy.

#### Super-resolution microscopies (1.5h - MN)

*Objectives:*
- What is the resolution limit imposed by light diffraction?
- Understand why and when higher spatial resolutions are needed in microscopy
- Grasp the basic physical concepts behind three well-established super-resolution methods
- When should you use each?

*Time:* Constructs to be learnt beforehand, discuss construct content with teacher during class (1h).

*How:*  Jupyter notebook, step-by-step
      1. [Single-molecule localization microscopy (SMLM)](constructs/UE_Introduction/SMLM_microscopy.ipynb)
            2. [Structured illumination microscopy (SIM)](constructs/UE_Introduction/SIM_microscopy.ipynb)
            3. [Stimulated emission depletion microscopy (STED)](constructs/UE_Introduction/STED_microscopy.ipynb)

*Evaluation:* not evaluated

*Outline:*
- Follow tutorials on SMLM, SIM and STED microscopies and answer questionnaires.
- Calculate the resolution gained for each of these methods
- Localize single molecules from a single-source dataset
- Read additional resources with examples of how these methods can be used to gain biological insight.

#### Basics of fluorescence fluctuation (1h - EM).


*Objectives:*

- Introduction to the concept of FCS : Fluorescence Correlation Spectroscopy
- What can we measure : molecular diffusion, molecular interactions, chemical reactions
- How do we measure : confocal microscope, alternating laser excitation
- Data analysis : auto and cross correlation, photon counting histogram

*Time:* Constructs to be learnt beforehand, discuss construct content with teacher during class and after class (1h).

*How:* 

*Evaluation:* not evaluated

*Outline:*
- Follow tutorials on FCS and answer questionnaires.
- Undersdand the autocorrealtion curve and describe the type of information that can be extracted from it
- Discussion around the possibilities and the limitaion of the methods
- Advanced notions : time resolved FCS, scanning FCS, Number and Brightnedd
- Read additional resources with examples of how fluctuation microscopie can be used to gain biological insight.



#### Basics of near-field microscopies (AFM) (1h - LCo).



*Objectives:*

- Get introduced to the main elements of an Atomic Force Microscope and understand how they work.
- Understand the main AFM imaging modes (static and dynamic).
- Understand the harmonic oscillator (physical concept) and why it is relevant in dynamic AFM.
- What we can image with an AFM, what is the spatial and temporal resolution we can achieve.

*Time:* Constructs to be learnt beforehand, discuss construct content with teacher during class and after class (1h).

*How:* Jupyter notebook, step-by-step 1. [Introduction to AFM](constructs/UE_Introduction/AFM.ipynb)

*Evaluation:* not evaluated

*Outline:*

- Follow tutorials on AFM microscopies and answer questionnaires.
- Briefly describe the static and dynamic AFM operational schemes (drawings required).
- AFM operating in ambient (air) conditions and in physiological conditions (liquids) for biological purposes.
- You will get introduced to the most relevant calibrations necessary to run conventional AFM experiments.
- Read additional resources with examples of how AFM can be used to gain biological insight.



---

### Introduction to Complex Networks (3h - AA)

Two lectures, one for a general introduction to complex networks, the other for applications to gene networks and metabolic networks.

1. Intro to network theory, with many applications (from traffic to epidemiology, relation with machine learning). Explain the concepts of directed *vs* indirected graph, different topologies, modularity, centrality index,... 
2. Small world effect, communities and robustness
3. Models for generating networks: Erdos, Renjy; Preferential attachment

##### Project: `   Analysis of real and data-driven network    `
*Objective: To acquire competences in analysing  networks* 

*Time:* After class.

*How:*  The students will be divided in groups and will be given a  dataset of  therotical model networks as well as a data driven one . Based on the lecture's material the students will provide a descriptive analysis of the networks and compared the characteristics of the 2.  Jupyter notebook

*Evaluation:* not evaluated

*Outline:* To be done

At the end of this project, explain the principles of Flow Cytometry, emphasise the difference between bulk and population measurements.

---
### Gene Regulation - Robustness and Optimality (8h - LC)

#### Revisiting the Central Dogma (3h)

1. Timescales of gene expression
2. Gene regulation: Activator and Repressor, Hill functions, logic gates.
3. Dynamics and response time of gene regulation
4. Brief digression on translation regulation 



#### Gene regulatory Networks (3h)

Where do you find networks in Biology? Focus on metabolic and genetic networks. What are their properties? Network motifs.

##### Project: `Growth and expression: Plate reader data  `

*Objective:* 

*Time:* During the class, demonstration by the teacher.

*How:*  Jupyter notebook, step-by-step

*Evaluation:* not evaluated

*Outline:* To be done

At the end of this project, explain the principles of Flow Cytometry, emphasise the difference between bulk and population measurements.



##### Homework: `    Random or genetic network?     `

*Objective:* import connectivity of a given GRN from *E.coli*. Plot it and compute relevant quantities (connectivity,...). Compare  to a ER network. 

*Time:* During the class? Demonstration by the teacher?

*How:*  Jupyter notebook, step-by-step

*Evaluation:* not evaluated?

*Outline:* To be done



##### Homework: `    Timescales of negative autoregulation     `

Based on parts of https://www.biorxiv.org/content/10.1101/2021.04.09.439163v1 

*Objective:* Merging the concepts learned in networks (negative feedback), gene regulation (timescales), simulations (Gillespie algorithm), stochasticity (noise, CV).

*Time:* 2 weeks for this assignment

*How:*  

*Evaluation:* evaluated

*Outline:* 

#### Robustness of protein circuits (2h)

Based on the regulation of bacterial chemotaxis

### Genome Biophysics (8h30' - MN)

1. DNA (1h).
   1. (30') What is DNA? DNA is the molecule that carries information. Double helix structure. Basepairing. Basics of multi-scale chromosome organization. [DNA basics tutorial](constructs/UE_Introduction/Basics_DNA.ipynb)
   2. (30') DNA in biotechnology: DNA origami. Talk by Gaetan Bellot.
2. Manipulating DNA (1.5h).
   1. (1h) DNA supercoling. Why is DNA supercoiled? What is the supercoiling state of DNA in a cell?  Proteins acting on DNA management: replichore, topoisomerases, RNA polymerase, translocases and helicases. Example for bacteria. How can DNA supercoiling be manipulated in vitro? Principles and applications of magnetic tweezers. [DNA supercoiling](constructs/UE_Introduction/DNAsupercoiling.ipynb)
   2. (30') Use of optical tweezers to understand the mechanisms of molecular motors. [OT_construct](constructs/UE_Introduction/OT_construct.ipynb).  Talk by Ashley Nord.
3. Nucleosomes and epigenetics (1.5h).
   1. (30') First level of higher order chromatin structure in eukaryotes: the nucleosome. Structure of the nucleosome. Histones, histone octamers, and how DNA is wrapped around. [nucleosomes](constructs/UE_Introduction/nucleosomeParticle.ipynb) 
   2. (30') What is epigenetics? Histone modifications can alter the structure of chromatin and the function of the nucleus. Review of the most relevant histone modifications and their consequences. [Histone modifications](constructs/UE_Introduction/histoneModifications.ipynb)
   3. (30') Mechanism of transcription by single-molecule manipulation methods. How do motor proteins read and write histone modification information. How do they work? Examples from structural and single molecule manipulation studies.  [DNA machines](constructs/UE_Introduction/DNAmachines.ipynb) 
4. Transcription factors (2h).
   1. (45') What is a transcription factor? what are general and developmental TFs? Why so many? What are cis-regulatory elements? What are enhancers? Why are enhancers important? What should I look at to identify an enhancer? Study of a genomic region using chip-seq profiles. [transcription_factors](constructs/UE_Introduction/transcription_factors.ipynb)
   2. (30') How can we study the dynamics of DNA binding proteins? Are they always bound to their targets?  [Study the diffusion of DNA binding proteins using sptPALM](constructs/UE_Introduction/spt_PALM_nucleus.ipynb)
   3. (45') Use of structural biology methods to dissect the mechanisms of transcription factors in transcriptional regulation. Talk by William Bourguet.
5. Higher-order chromatin structure (2h30').
   1. (1h) From nucleosomes to TADs and chromosome territories. High-throughput sequencing-based chromosome architecture (Hi-C like techniques). [Higher-order chromosome structure](constructs/UE_Introduction/higher-order_chromatin_structure.ipynb)
   3. (30') Factors that modulate the organization of chromatin into domains and compartments. Cohesin/condensin and loop extrusion. Monitoring loop extrusion with single-molecule TIRF microscopy. How can SMCs modulate the higher order organization of bacterial chromosomes? [The mechanism of loop extrusion](constructs/UE_Introduction/LoopExtrusion.ipynb)
   4. (1h) Heterogeneity in chromosome organization. Why it is important to detect chromatin organization in single cells? Imaging based methods  to trace chromatin: Hi-M, chromatin tracing, ORCA, etc. [Multiplexing imaging methods](constructs/UE_Introduction/HiM.ipynb)

### Membrane Biophysics (6h)

#### Preliminary knowledge

Introduction to the structural biology of biological membranes (M1 HMBS103 - Biochimie Structurale) - C Doucet & PE Milhiet (pdf available soon)

- Membranes and evolution

- Composition of membranes in archeae and bacteria

- Composition and compartments in eukaryotes
  - Membrane components (lipid, protein, sugar)
  - Membrane composition (organelles, organism including virus)
  - Plasma Membrane
  - Membrane organelles
  - Links to the cytoskeleton

- How to manipulate membrane components (detergents, SMALP, nanodiscs...)

- Membrane structure and organization
  - Lipid phase separation
  - Membrane diffusion / lateral segregation
  - Concept of domains

  

#### Program (6h)

##### I - Physics of Membranes - A theoretical point of view (M Abkarian)

- Membrane deformations

- Bending energy

- Equilibrium shapes

- Membrane fluctuation



#### II - Experimental characterization of biological membranes (L Costa & PE Milhiet)

- Model membranes versus native membranes

- Mimicking biological membranes

- Imaging and spectroscopy
  - Spectroscopy and Microscopy (SMLM, FFS, NSNOM, EPR, SAXS/SANS, Raman, FTIR, Cryo-EM, NMR, X-ray crystallography)
  - Computational characterization
  - Construct FLUOSIM

  

##### III - Probing membrane mechanics (L Costa & PE Milhiet)

- Methodologies

- Cell mechanics probed by Atomic Force Microscopy (AFM)



#### Bibliography & useful links

- https://phys.libretexts.org/Courses/University_of_California_Davis/UCD%3A_Biophysics_241_-_Membrane_Biology

- NanoHUB (Arvind Raman): https://nanohub.org/
