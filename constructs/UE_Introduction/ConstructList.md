# Constructs



[TOC]

## Content

This file will contain the updated list of constructs available for this UE.



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

Lenses, focal points, apertures, magnification, filters, Fourier space, diffraction, interference.

**Tutorials**

1. Biological fluorescence
   1. Fluorescence. `construct: fluorescence`
   2. Labeling methods. `construct: labeling_methods`
   
2. Basics of image processing

   1. Load and manipulate images. `construct: Load_image` `Basic_image_processing`
   2. Image processing-based segmentation. `construct: Segmentation_masks_imageAnalysis`
   3. AI-based segmentation. ```construct: Segmenting nuclei by AI```

3. Imaging systems
   1. widefield  ```construct: widefield_microscopy``` 
   2. TIRF ```construct: TIRF_microscopy``` 
   3. confocal ```construct: confocal_microscopy```

4. Super-resolution microscopies
   1. Structured illumination microscopy (SMLM). `construct: SIM_microscopy`
   2. Single-molecule localization microscopy (SIM). `construct: SMLM_tutorial`
   3. Stimulated emission depletion microscopy (STED). 

5. Basics of fluorescence fluctuation.

   1. 

6. Basics of near-field microscopies (AFM).

   1. 

   


| Name                       | Status | Workers | Description                                                  |
| -------------------------- | ------ | ------- | ------------------------------------------------------------ |
| Python_introduction | up | Marcelo | A basic introduction to installing python, using numpy, matplotlib, reading files, and fitting functions |
| fluorescence | planned | Antoine |  |
| labeling_methods | planned |  |  |
| Load_image.ipynb | up | Marcelo |This construct will show how to load and display an image in python|
| Basic_image_processing.ipynb | up | Marcelo |This construct will show how to perform basic image processing in python|
| widefield_microscopy.ipynb | up | Marcelo | Tutorial on widefield microscopy: `needs images` |
| TIRF_microscopy.ipynb                  | up | Marcelo | Tutorial on TIRFM microscopy: `needs images` |
| confocal_microscopy.ipynb              | up      | Marcelo | Tutorial on confocal microscopy. `needs images` |
| Segmentation_masks_imageAnalysis.ipynb | up    | Marcelo | This construct will show students how to segment extended sources (e.g. nuclei) using the ASTROPY.|
| Segmentation of nuclei by AI | planned     | JB | This construct will show students how to segment extended nuclei using starDist|
| SMLM_tutorial.ipynb | up     | Marcelo | This construct will show students how to load an image of sources from a library, and use the ASTROPY package to localize the centers of localizations in 2D. |
| SIM_microscopy.ipynb                   | up | Marcelo | This construct will show how to load SIM and widefield images and calculate the gain in resolution in the Fourier space: `needs images` |
| STED_microscopy.ipynb | planned | JB? ||
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

1. DNA.

   1. What is DNA? `construct: Basics_DNA`
   2. DNA as a polymer, FJC and WLC models. `construct: modeling_DNA`
   3. Bacterial chromosome organization. `construct: bacterialChromosome`

2. Manipulating DNA.
   1. Supercoiling DNA with magnetic tweezers. `construct: magTweezers_manipulateDNA`
   2. Molecular motors with optical tweezers. `opticalTweezers_protein_stepSize`

3. Nucleosomes and epigenetics.

   1. The nucleosome structure. `construct: nucleosomeParticle` 
   2. Histone modifications. `construct: histoneModifications`
   3. Readers and Writers. `construct: chromatinModifiers`

4. Transcription factors.

   1. General and developmental TFs. `construct: transcriptionFactors_introduction `
   2. TF diffusion using sptPALM.  `construct: transcriptionFactorDiffusion`
   3. cis-regulatory elements. `construct: mappingCREs_ChipSeq`.

5. Higher-order chromatin structure.
   1. 3C-based methods. ```construct: plotContactMaps```
   2. FISH/FROS-based methods. `construct: measureContactFrequencyMicroscopy`
   3. Architectural proteins. `construct: ParB_condensin_bacteria`
   4. Hi-M, ORCA, chromatin tracing. `construct: buildPairwiseDistanceMaps`

6. Modeling chromatin. `--> this section may go away the first year?`

   1. cellular models using polymer dynamics.   `construct: modeling chromatin`
   2. comparisons to experiments (HiC/ microscopy).

   

| Name                       | Status | Workers | Description |
| -------------------------- | ------ | ------- | ----------|
| Basics_DNA | planned | marcelo | Introduce DNA: Structure and function. |
| modeling_DNA                   | planned | marcelo | DNA as a polymer. This construct will show how to produce WLC models and display simulated force extension curves. |
| bacterialChromosome           | planned | marcelo/ Antoine | Bacterial chromosome structure.  Machines in charge of DNA management: topisomerases, replication, transcription, segregation. Activity: structure of ParB using SMLM. |
| magTweezers_manipulateDNA      | planned | marcelo |Introduction to magnetic tweezers. Activity: load a dataset of extension curves from single-molecule experiments and perform basic display and analysis (e.g. velocity)|
| opticalTweezers_protein_stepSize | planned | marcelo/ Ashley? |Introduction to optical tweezers to study motors. Activity: load traces and calculate motor step sizes.|
| nucleosomeParticle | planned | marcelo/ Diego? |Introduction on structure of nucleosomes. Activity: visualize structure of a nucleosome in pymol.|
| histoneModifications | planned | marcelo |Basics of histone modifications and epigenetics.|
| chromatinModifiers | planned | marcelo |Motors involved in modifying chromatin. Case studies: cryo-EM structure of RISC and its ability to move through nucleosomes using optical tweezers.|
| transcriptionFactors_introduction | planned | marcelo |Introduction on general and specific transcription factors.|
| transcriptionFactorDiffusion      | planned | marcelo |This construct will show students how to load a sptPALM dataset of TF trajectories and use packages to calculate diffusion properties.|
| mappingCREs_ChipSeq | planned | marcelo Olivier |Activity: load chip-seq profiles of several TFs and find putative enhancers in a specific genomic region.|
| plotContactMaps | planned | marcelo Antoine |Activity: Load *B. subtilis* HiC maps using cooler and identify organization of origin region.|
| measureContactFrequencyMicroscopy | planned | marcelo Antoine | Activity: Load two color images for 2 FROS probes and calculate their distance distribution. |
| ParB_condensates_bacteria |  | Antoine |Activity: Load tracking data for ParB and plot diffusion coefficient distributions. Identify species.|
| buildPairwiseDistanceMaps | planned | marcelo |Activity: Load pairwise distance matrices from single cells and calculate ensemble contact map.|
| modeling chromatin | planned | marcelo |This construct will show how to load a dataset of simulations of the whole Drosophila genome, and plot pair-wise distance and contact matrices.|

### Membrane Biophysics

| Name                       | Status | Workers | Description |
| -------------------------- | ------ | ------- | ----------|
| | | ||
| | | ||
| | | ||



## Teachers

- Luca Ciandrini
- Marcelo Nollmann
- PEM?



## Evaluation

Mixed evaluation between project (compulsory 4*10% + chosen 10%) + CC (20%) + final exam (30%).



### Bibliography (books only)

1. An introduction to Systems Biology, Uri Alon
2. Physical Biology of the cell, R. Phillips et al.
3. Cell biology by the numbers, R. Milo and R. Phillips
4. Random Walks in Biology, Howard

