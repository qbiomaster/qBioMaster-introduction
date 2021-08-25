# Constructs



[TOC]

## Content

This file will contain the updated list of constructs available for this UE.



### Introduction to networks in biology

1. Robustness
2. Optimality



### Introduction to optics and imaging

**Bootcamp pre-requisites**

Lenses, focal points, apertures, magnification, filters, Fourier space, diffraction, interference.

**Tutorials**

1. Basics of image processing.

   1. [Load images](Load_image.ipynb)
   2. [Manipulate images](Basic_image_processing.ipynb)
   3. [Image processing-based segmentation](Segmentation_masks_imageAnalysis.ipynb)
   4. [AI-based segmentation](constructs/UE_Introduction/AI_segmentation.ipynb)
   
2. [Fluorescence_microscopy](Fluorescence_microscopy.ipynb). This construct will introduce:

   1. principles of fluorescence
   2. labeling methods
   3. widefield microscopy

3. Advanced imaging systems.

   2. [TIRF microscopy](TIRF_microscopy.ipynb) 
   3. [Confocal microscopy](confocal_microscopy.ipynb)

4. Super-resolution microscopies.
   1. [Single-molecule localization microscopy (SMLM)](SMLM_microscopy.ipynb)
   2. [Structured illumination microscopy (SIM)](SIM_microscopy.ipynb)
   3. [Stimulated emission depletion microscopy (STED)](STED_microscopy.ipynb)

5. Basics of fluorescence fluctuation.

   1. 

6. Basics of near-field microscopies (AFM).
   1. [Introduction to AFM](STED_microscopy.ipynb)

   


| Name                       | Status | Workers | Description                                                  |
| -------------------------- | ------ | ------- | ------------------------------------------------------------ |
| [Python_introduction](../../docs/Python_introduction/Basics_python_1.md) | up | Marcelo | A basic introduction to installing python, using numpy, matplotlib, reading files, and fitting functions |
| [Load images](Load_image.ipynb)                              | up | Marcelo |This construct will show how to load and display an image in python|
| [Load and manipulate images](Basic_image_processing.ipynb)   | up | Marcelo |This construct will show how to perform basic image processing in python|
| [Widefield fluorescence_microscopy](Fluorescence_microscopy.ipynb) | up | Marcelo | Introduction on fluorescence microscopy with practical: `needs images` |
| [TIRF microscopy](TIRF_microscopy.ipynb) | up | Marcelo | Tutorial on TIRFM microscopy: `needs images` |
| [Confocal microscopy](confocal_microscopy.ipynb)             | up      | Marcelo | Tutorial on confocal microscopy. `needs images` |
| [Image processing-based segmentation](Segmentation_masks_imageAnalysis.ipynb) | up    | Marcelo | This construct will show students how to segment extended sources (e.g. nuclei) using the ASTROPY.|
| [AI-based segmentation](constructs/UE_Introduction/AI_segmentation.ipynb) | up    | JB | This construct will show students how to segment extended nuclei using starDist|
| [Single-molecule localization microscopy (SMLM)](SMLM_microscopy.ipynb) | up     | Marcelo | This construct will show students how to load an image of sources from a library, and use the ASTROPY package to localize the centers of localizations in 2D. |
| [Structured illumination microscopy (SIM)](SIM_microscopy.ipynb) | up | Marcelo | This construct will show how to load SIM and widefield images and calculate the gain in resolution in the Fourier space. |
| [Stimulated emission depletion microscopy (STED)](STED_microscopy.ipynb) | up | marcelo |Introduction to STED microscopy with practical.|
| [AFM](STED_microscopy.ipynb) | up | Luca Costa |Introduction to Atomic Force Microscopy.|



### Transcription networks and gene regulation

| Name                       | Status | Workers | Description |
| -------------------------- | ------ | ------- | ----------|
| | | ||
| | | ||
| | | ||



### Genome Biophysics

1. DNA.

   1. [What is DNA?](Basics_DNA.ipynb)
   2. DNA as a polymer, FJC and WLC models. `construct: modeling_DNA`
   3. Bacterial chromosome organization. `construct: bacterialChromosome`

2. Manipulating DNA.
   1. Supercoiling DNA with magnetic tweezers. [DNA supercoiling](constructs/UE_Introduction/DNAsupercoiling.ipynb)
   2. Molecular motors with optical tweezers. [OT_construct](OT_construct.ipynb)  

3. Nucleosomes and epigenetics.

   1. The nucleosome structure. `construct: nucleosomeParticle` 
   2. Histone modifications. `construct: histoneModifications`
   3. Readers and Writers. `construct: chromatinModifiers`

4. Transcription factors.

   1. General and developmental TFs. `construct: transcriptionFactors_introduction `
   2. [Study the diffusion of DNA binding proteins using sptPALM](constructs/UE_Introduction/spt_PALM_ParB_proteins.ipynb)  
   3. cis-regulatory elements. `construct: mappingCREs_ChipSeq`.

5. Higher-order chromatin structure.
   1. [Loading and visualizing a Hi-C matrix](constructs/UE_Introduction/HiC_matrices_Bacillus_subtilis.ipynb)
   2. Architectural proteins. `construct: LoopExtrusion_construct`
   3. Hi-M, ORCA, chromatin tracing. `construct: buildPairwiseDistanceMaps`
   

   

| Name                       | Status | Workers | Time | Description |
| -------------------------- | ------ | ------- | ----------| ----------|
| [What is DNA?](Basics_DNA.ipynb)  | up | marcelo | 30' | Introduce DNA: Structure and function. |
| Talk by Gaetan Bellot | up | Gaetan Bellot | 30' | How to build 3D shapes using DNA origami. Applications to biotechnology |
| [DNA supercoiling](constructs/UE_Introduction/DNAsupercoiling.ipynb) | up | marcelo |1h| DNA supercoiling, topoisomerases, magnetic tweezers          |
| [OT_construct](OT_construct.ipynb) | up | Ashley |30'|Introduction to optical tweezers to study motors.|
| [nucleosomes](constructs/UE_Introduction/nucleosomeParticle.ipynb) | up | marcelo |30'|Introduction on structure of nucleosomes. Activity: visualize structure of a nucleosome in pymol.|
| [histoneModifications](constructs/UE_Introduction/histoneModifications.ipynb) | planned | marcelo |30'|Basics of histone modifications and epigenetics.|
| [chromatinModifiers](constructs/UE_Introduction/chromatinModifiers.ipynb) | planned | marcelo |30'|Motors involved in modifying chromatin. Case studies: cryo-EM structure of RISC and its ability to move through nucleosomes using optical tweezers.|
| [transcription_factors](constructs/UE_Introduction/transcription_factors.ipynb) | planned | marcelo |30'|Introduction on general and specific transcription factors. Activity: load chip-seq profiles of several TFs and find putative enhancers in a specific genomic region.|
| [Study the diffusion of DNA binding proteins using sptPALM](constructs/UE_Introduction/spt_PALM_ParB_proteins.ipynb) | planned | Antoine |30'|This construct will show students how to load a sptPALM dataset of TF trajectories and use packages to calculate diffusion properties.|
| Talk by William Bourguet | planned |                  |45'||
| [Loading and visualizing a Hi-C matrix](constructs/UE_Introduction/HiC_matrices_Bacillus_subtilis.ipynb) | planned | Antoine |30'|Activity: Load *B. subtilis* HiC maps using cooler and identify organization of origin region.|
| LoopExtrusion_construct            | planned | marcelo          |30'|Activity: Load tracking data for ParB and plot diffusion coefficient distributions. Identify species.|
| HiM_construct | planned | marcelo |45'|Activity: Load pairwise distance matrices from single cells and calculate ensemble contact map.|

### Membrane Biophysics

| Name                       | Status | Workers | Description |
| -------------------------- | ------ | ------- | ----------|
| | | ||
| | | ||
| | | ||



## Teachers

- Luca Ciandrini

- Marcelo Nollmann

- Pierre-Emmanuel Milhiet

- Antoine Le Gall

- JB Fiche

- Gaetan Bellot

- William Bourguet

- Ashley Nord

  





