# List of Labs for Introduction to Quantitative Biology



[TOC]

## Content

This file will contain the updated list of Labs available for this UE.



## List of all Labs planned

### Introduction to networks in biology

1. Robustness
2. Optimality

| Name                       | Status | Workers | Description |
| -------------------------- | ------ | ------- | ----------|
| | | ||
| | | ||
| | | ||



### Introduction to optics and imaging

**Bootcamp pre-requisites**

Lenses, focal points, apertures, magnification, Fourier space, diffraction, interference.

**Tutorials**

1. Imaging systems: 

   1. widefield  ```LAB: widefield``` 
   2. TIRF ```LAB: TIRF``` 
   3. confocal ```LAB: confocal```
   4. Kohler illumination. ```LAB: Kohler```

2. Super-resolution microscopies
   1. STED.
   2. SIM. ```LAB: Calculating the resolution gain by SIM```
   3. SMLM. ```LAB: Localization of sources in 2D```. ```LAB: transcription factor diffusion```

3. Basics of image segmentation

   1. Thresholding and watershed. ```LAB: Segmenting nuclei by threshold```
   2. AI-based segmentation. ```LAB: Segmenting nuclei by AI```

4. Basics of fluorescence fluctuation.

5. Basics of near-field microscopies (AFM).

   

| Name                       | Status | Workers | Description                                                  |
| -------------------------- | ------ | ------- | ------------------------------------------------------------ |
| widefield | planned | Marcelo, Antoine | |
| TIRF | planned | Marcelo, Antoine | |
| confocal | planned | Marcelo, Antoine | |
| Kohler | planned | Marcelo, Antoine | |
| Loading images  in Python | planned | Marcelo |This lab will show how to load and display an image in python|
| Basic image processing in Python | planned | Marcelo |This lab will show how to perform basic image processing in python|
| Working with many images         | planned | Marcelo |This lab will show how to load and process a folder of images|
| Localization of sources in 2D | up     | Marcelo | This lab will show students how to load an image of sources from a library, and use the ASTROPY package to localize the centers of localizations in 2D. |
| Segmentation of nuclei by threshold | planned     | Marcelo | This lab will show students how to segment extended sources (e.g. nuclei) using the ASTROPY.|
| Segmentation of nuclei by AI | planned     | Marcelo, JB | This lab will show students how to segment extended nuclei using starDist|
| Calculating the resolution gain by SIM | planned | Marcelo, Antoine | This lab will show how to load SIM and widefield images and calculate the gain in resolution in the Fourier space |
|                                        |         |                  ||
|                                        |         |                  ||
| | | ||
| | | ||
| | | ||



### Transcription networks and gene regulation

| Name                       | Status | Workers | Description |
| -------------------------- | ------ | ------- | ----------|
| | | ||
| | | ||
| | | ||



### Genome Biophysics

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
8. 

| Name                       | Status | Workers | Description |
| -------------------------- | ------ | ------- | ----------|
| modeling DNA                   | planned | marcelo | This lab will show how to produce WLC models and display simulated force extension curves. |
| transcription factor diffusion | planned | marcelo |This lab will show students how to load a sptPALM dataset of TF trajectories and use packages to calculate diffusion properties.|
| magnetic tweezers | planned | marcelo |This lab will load a dataset of extension curves from single-molecule experiments and perform basic display and analysis (e.g. velocity, pause analysis, steps)|
| modeling chromatin | planned | marcelo |This lab will show how to load a dataset of simulations of the whole Drosophila genome, and plot pair-wise distance and contact matrices.|
| displaying contact maps | planned | marcelo |This lab will show how to load a contact map using Cooler and display a number of genomic regions.|



### Membrane Biophysics

| Name                       | Status | Workers | Description |
| -------------------------- | ------ | ------- | ----------|
| | | ||
| | | ||
| | | ||