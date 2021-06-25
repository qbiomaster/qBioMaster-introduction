# Introduction to qbio

[TOC] 

## Organisation

1st semester - 5 ECTS - 40 hours in the class. 

The majority of classes will not be "standard" lectures. Interaction will be privileged (learning by peers, Rolling boards,... )

Students will have to develop 4 compulsory projects (to be evaluated), plus one at choice.



### Tentative timetable

Slots are 1.5h starting at 8:00, with 15 min pause between two slots.

According to the compulsory courses of the curricula EpiGenBio, CancerBio, Medicine Explique/Phisio the *Intro to qbio* course could be on **Tuesday 8h - 11h15**, **Thursday 8h - 13h00** or **Thursday 13h15 - 18h15**, **Friday 15h-18h15**. In the temporary timetable below I have only used the first 2 slots (Tue and Thu morning).

| Date             | Day     |   #hours | Starting Time | Subject | Where |
| :--------------- | ------- | -------: | ------------- | ------- | ----- |
| ~~16 Septembre~~ | ~~Thu~~ |  ~~1.5~~ | ~~9:45~~      |         |       |
| 21 Septembre     | Tue     |      3.0 | 8:00          |         |       |
| 23 Septembre     | Thu     |      3.0 | 9:45          |         |       |
| 30 Septembre     | Thu     |      4.5 | 8:00          |         |       |
| 7 October        | Thu     |      4.5 | 8:00          |         |       |
| 14 October       | Thu     |      4.5 | 8:00          |         |       |
| 19 October       | Tue     |      3.0 | 8:00          |         |       |
| 21 October       | Thu     |      4.5 | 8:00          |         |       |
| 26 October       | Tue     |      3.0 | 8:00          |         |       |
| 28 October       | Thu     |      4.5 | 8:00          |         |       |
| 9 November       | Tue     |      3.0 | 8:00          |         |       |
| 16 November      | Tue     |      3.0 | 8:00          |         |       |
|                  |         | **40.5** |               |         |       |



### Evaluation

Mixed evaluation between project (compulsory 4*10% + chosen 10%) + CC (20%) + final exam (30%).



## Bibliography (books only)

1. *An introduction to Systems Biology*, Uri Alon
2. *Physical Biology of the cell*, R. Phillips et al.
3. *Cell biology by the numbers*, R. Milo and R. Phillips
4. *Biological Physics: Energy, Information, Life*, Philip Nelson
5. *Random Walks in Biology*, Howard



## Tentative program

(In parenthesis the number of hours, 1 lecture is 1.5h)

[LC = Luca Ciandrini; MN = Marcelo Nollmann]



### What is quantitative biology? (1.5h - LC) 

Explain the course, introduce the teachers, projects, evaluation. Outline the course. Robustness and optimality. Quantitative reasoning, not just in biology but in everyday's life.

#### Homework: *How many litres of water do you use each day?*

Give an estimate of how many litres of water per day you consume following your lifestyle.

*Objective:* learn how to look for data, how to analyse, present and discuss them. 

*Time:* 1 week

*How:* Discord during the week, written report (2 pages max), Jupiter notebook. Quickly discuss the outcomes the week later. 

*Evaluation:* not compulsory, to be discussed.  

*Outline:*

- Start by estimating how much water you use for a shower, brushing your teeth, flushing the toilet,... other? 

- Look for the average European (and worldwide) per day consumption and compare with yours.

- Is that it? What about cooking? How is your diet affecting the amount of water used for your lifestyle?

- Estimate the amount of water (and the extension of the land) that was necessary to produce your typical meal. 

- Is it sustainable worldwide? Discuss and conclude.

  

---

### Biology meets mathematics and physics: modelling toolbox (3h45 - LC)

#### Modelling with Ordinary Differential Equations (1h30)

##### Lab: `Solving ODE (pencil and computer) `

The idea is to build this Lab on the Toggle Switch.

*Objective:* Sketch a model based on ODE, simple solving techniques . Sketching Solutions in 2D: Phase Plane, Vector Field, Nullclines. Solve your system of equations with Python. 

*Time:*  During the class? Demonstration by the teacher?

*How:*  Jupyter notebook, step-by-step.

*Evaluation:* not evaluated? 

<!--We could leave a part at the end as a project. Or ask to do the same procedure for another genetic circuit later on during the course-->

*Outline:* To be done



#### Stochasticity or Noise in Biochemical reactions (1h30)

##### Lab: `Gillespie Algorithm  `

*Objective:* Introduction to Monte Carlo methods. Understanding the concept of noise, learn how to simulate a stochastic biochemical reaction. Distributions, coefficient of variation.

*Time:* During the class? Demonstration by the teacher?

*How:*  Jupyter notebook, step-by-step

*Evaluation:* not evaluated

*Outline:* To be done



#### Modelling with Partial Differential Equations (45 min)

Revise the concept of partial derivatives, in particular make the link to diffusion (macroscopic). 



---

### Random walks and stochasticity in Biology (XXh - LC/MN) 

We will first give an overview of the theory and some biological examples, that will be the introduction for the microscopy parts.

#### Random Walks (? 1h30 - LC)

Gives the basics of Random Walks in biology, with a particular example to be investigated in the Tutorials (or Labs). Intro to polymers?



### Basics of microscopy (XXh - MN)

#### Fluorescence_microscopy (1h)

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

#### Basics of image processing (1h)

*Objectives:*

- Basic principles of image manipulation in python
- Methods for detecting objects

*Time:* Constructs to be learnt beforehand, discuss construct content with teacher during class (1h).

*How:*  Jupyter notebook, step-by-step
   1. [Learn how to load images](constructs/UE_Introduction/Load_image.ipynb)
   2. [Learn how to manipulate images](constructs/UE_Introduction/Basic_image_processing.ipynb)
   3. [Image processing-based segmentation](constructs/UE_Introduction/Segmentation_masks_imageAnalysis.ipynb)
   4. AI-based segmentation. ```construct: Segmenting nuclei by AI```

*Evaluation:* not evaluated

*Outline:*
-  You will start by following the constructs to load images and learn the basics of image manipulation.
- You will learn then how to segment an image of nuclei within a Drosophila embryo using conventional methods, such as thresholding and watershed.
-  Finally, you will learn how to apply deep learning algorithms to segment nuclei.

#### Advanced imaging systems (1.5h)

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

#### Super-resolution microscopies (2.5h)

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

#### Basics of fluorescence fluctuation.

   1. 

#### Basics of near-field microscopies (AFM).

   1. 



---

### Introduction to Complex Networks (3h - LC)

Two lectures, one for a general introduction to complex networks, the other for applications to gene networks and metabolic networks.

#### General Introduction on Complex Networks (1.5h - LC or external)

Intro to network theory, with many applications (from traffic to epidemiology, relation with machine learning). Explain the concepts of directed *vs* indirected graph, different topologies, modularity,... 

##### Lab: `    TBD     `



#### Gene regulatory Network (1.5h - LC)

Where do you find networks in Biology? Focus on metabolic and genetic networks. What are their properties?

##### Lab: `    Random or genetic network?     `

*Objective:* import connectivity of a given GRN from *E.coli*. Plot it and compute relevant quantities (connectivity,...). Compare  to a ER network. 

*Time:* During the class? Demonstration by the teacher?

*How:*  Jupyter notebook, step-by-step

*Evaluation:* not evaluated?

*Outline:* To be done



---

### Gene Regulation - Robustness and Optimality (xxh - LC)

Work in progress.





---

### Genome Biophysics (xxh - MN)

1. DNA.

   1. What is DNA? DNA is the molecule that carries information. Double helix structure. Basepairing. DNA in biotechnology: DNA origami.
   2. DNA is a polymer. Models to understand the mechanical properties of DNA. Freely jointed chain and worm like chain models. `construct: modeling_DNA`
   3. How can DNA build a chromosome? Bacterial chromosome organization as a simple model system. Chromosome choreography. Proteins acting on DNA management: replichore, topoisomerases, RNA polymerase, translocases and helicases. `construct: bacterialChromosome`

2. Manipulating DNA.
   1. DNA supercoling. Why is DNA supercoiled? What is the supercoiling state of DNA in a cell? Example for bacteria. How can DNA supercoiling be manipulated in vitro? Principles and applications of magnetic tweezers. `construct: magTweezers_manipulateDNA`
   2. Molecular motors that push DNA around. Use of optical tweezers to understand the mechanisms of molecular motors: translocases and DNA packaging motors. `opticalTweezers_protein_stepSize`

3. Nucleosomes and epigenetics.

   1. First level of higher order chromatin structure in eukaryotes: the nucleosome. Structure of the nucleosome. Histones, histone octamers, and how DNA is wrapped around. `construct: nucleosomeParticle` 
   2. What is epigenetics? Histone modifications can alter the structure of chromatin and the function of the nucleus. Catalogue of the most relevant histone modifications. `construct: histoneModifications`
   3. Proteins that can read and write histone modifications. How do they work? Examples from single molecule manipulation, and fluorescence. `construct: chromatinModifiers`

4. Transcription factors.

   1. What is a transcription factor? what are general and developmental TFs? Why so many? `construct: transcriptionFactors_introduction `
   2. How can we study the dynamics of TFs? Are they always bound to their targets? Study on the diffusion of TFs using sptPALM.  `construct: transcriptionFactorDiffusion`
   3. What are cis-regulatory elements? What are enhancers? Why are enhancers important? What should I look at to identify an enhancer? Study of a genomic region using chip-seq profiles. `construct: mappingCREs_ChipSeq`.

5. Higher-order chromatin structure.
   1. Chromosome territories. Intermediates scales between nucleosomes and territories. Methods to detect organization at these meso-scales. High-throughput sequencing-based chromosome architecture (Hi-C like techniques). Topological associated domains and compartments. ```construct: plotContactMaps```
   2. Localization of genes in the nucleus affect its function. How can DNA-FISH/FROS-based methods be used to detect localization of genomic regions in the nucleus? How can we measure physical distances from the localization of genomic spots? `construct: measureContactFrequencyMicroscopy`
   3. Factors that modulate the organization of chromatin into domains and compartments. Cohesin/condensin and loop extrusion. Monitoring loop extrusion with single-molecule TIRF microscopy. How can condensins modulate the higher order organization of bacterial chromosomes? `construct: ParB_condensin_bacteria`
   4. Heterogeneity in chromosome organization. Why it is important to detect chromatin organization in single cells? Imaging based methods  to trace chromatin: Hi-M, ORCA, chromatin tracing, etc. `construct: buildPairwiseDistanceMaps`

6. Modeling chromatin. `--> this section may go away the first year?`

   1. cellular models using polymer dynamics.   `construct: modeling chromatin`
   2. comparisons to experiments (HiC/ microscopy).

### Membrane Biophysics (xxh - PEM?)

Work in progress.









