# Introduction to qbio

[TOC] 

## Organisation

1st semester - 5 ECTS - 40 hours in the class. 

The majority of classes will not be "standard" lectures. Interaction will be privileged (learning by peers, Rolling boards,... )

Students will have to develop 4 compulsory projects (to be evaluated), plus one at choice.



### Tentative timetable

Slots are 1.5h starting at 8:00, with 15 min pause between two slots.

According to the compulsory courses of the curricula EpiGenBio, CancerBio, Medicine Explique/Phisio the *Intro to qbio* course could be on **Tuesday 8h - 11h15**, **Thursday 8h - 13h00** or **Thursday 13h15 - 18h15**, **Friday 15h-18h15**. In the temporary timetable below I have only used the first 2 slots (Tue and Thu morning).

| Date         | Day  |   #hours | Starting Time | Subject | Where |
| :----------- | ---- | -------: | ------------- | ------- | ----- |
| 16 Septembre | Thu  |      1.5 | 9:45          |         |       |
| 21 Septembre | Tue  |      1.5 | 9:45          |         |       |
| 23 Septembre | Thu  |      3.0 | 9:45          |         |       |
| 30 Septembre | Thu  |      4.5 | 8:00          |         |       |
| 7 October    | Thu  |      4.5 | 8:00          |         |       |
| 14 October   | Thu  |      4.5 | 8:00          |         |       |
| 19 October   | Tue  |      3.0 | 8:00          |         |       |
| 21 October   | Thu  |      4.5 | 8:00          |         |       |
| 26 October   | Tue  |      3.0 | 8:00          |         |       |
| 28 October   | Thu  |      4.5 | 8:00          |         |       |
| 9 November   | Tue  |      3.0 | 8:00          |         |       |
| 16 November  | Tue  |      3.0 | 8:00          |         |       |
|              |      | **40.5** |               |         |       |



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

#### Imaging systems

##### Lab:  ```LAB: widefield``` TIRF ```LAB: TIRF```  ```LAB: confocal``` ```LAB: Kohler```

*Objective:* Introduction to imaging systems. Widefield. TIRF. Confocal. Illumination systems.

*Time:* During the class? Demonstration by the teacher?

*How:*  Jupyter notebook, step-by-step

*Evaluation:* not evaluated

*Outline:* To be done



#### Super-resolution microscopies

##### Lab: ```LAB: Calculating the resolution gain by SIM``` ```LAB: Localization of sources in 2D```. ```LAB: transcription factor diffusion```

*Objective:* Introduction to super-resolution methods. SMLM: PALM/STORM, etc. SIM. STED.

*Time:* During the class? Demonstration by the teacher?

*How:*  Jupyter notebook, step-by-step

*Evaluation:* not evaluated

*Outline:* To be done



#### Basics of image segmentation

##### Lab: ```LAB: Segmenting nuclei by threshold```  ```LAB: Segmenting nuclei by AI```

##### *Objective:* Introduction to image segmentation. 

*Time:* During the class? Demonstration by the teacher?

*How:*  Jupyter notebook, step-by-step

*Evaluation:* not evaluated

*Outline:* To be done



1. Thresholding and watershed. AI-based segmentation.Basics of fluorescence fluctuation.

##### Lab: `fluctuation microscopy  `

*Objective:* Introduction to fluctuation methods. Fixed point FCS, FCCS; scanning FCS.

*Time:* During the class? Demonstration by the teacher?

*How:*  Jupyter notebook, step-by-step

*Evaluation:* not evaluated

*Outline:* To be done

*Dependencies:* diffusion, Brownian motion, correlation function, confocal microscopy.



#### Basics of near-field microscopies (AFM).

##### Lab: `near-field microscopy  `

*Objective:* Introduction to near-field microscopies 

*Time:* During the class? Demonstration by the teacher?

*How:*  Jupyter notebook, step-by-step

*Evaluation:* not evaluated

*Outline:* To be done




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

1. DNA structure: DNA as a polymer, FJC and WLC models. ```LAB: modeling DNA```
2. Manipulating DNA:
   1. Magnetic tweezers.
   2. Optical tweezers.
   3. Examples.
3. Nucleosomes and epigenetics
4. Transcription factors: general and developmental TFs
   1. TF diffusion using sptPALM.  ```LAB: transcription factor diffusion```
5. cis-regulatory elements
6. Higher-order chromatin structure:
   1. 3C-based methods. ```LAB: displaying contact maps using Cooler```
   2. Hi-M, ORCA. ```LAB: Calculating PWD maps from localization Tables```
7. Modeling chromatin: cellular models using polymer dynamics, comparisons to experiments (HiC/ microscopy).  ```LAB: modeling chromatin```



### Membrane Biophysics (xxh - PEM?)

Work in progress.









