# Constructs for Imaging and Genome Biophysics

[TOC]

This file will contain the updated list of constructs available for this UE.

### Introduction to optics and imaging (7h)

**Constructs**
1. [Jupyter labs](../../docs/resourcesJupyter.md)

2. Basics of image processing 
   1. [Load images](Load_image.ipynb)
   2. [Manipulate images](Basic_image_processing.ipynb)
   3. [Image processing-based segmentation](Segmentation_masks_imageAnalysis.ipynb)
   4. [AI-based segmentation](constructs/UE_Introduction/AI_segmentation.ipynb)
   
3. [Fluorescence and microscopy](Fluorescence_microscopy.ipynb) 
   This construct will introduce:
   1. principles of fluorescence
   2. labeling methods
   3. widefield microscopy

4. Advanced imaging systems 
   1. [TIRF microscopy](TIRF_microscopy.ipynb)
   2. [Confocal microscopy](confocal_microscopy.ipynb) 

5. Super-resolution microscopies 
   1. [Single-molecule localization microscopy (SMLM)](SMLM_tutorial1.ipynb) (1h)
   2. [Structured illumination microscopy (SIM)](SIM_microscopy.ipynb) (15')
   3. [Stimulated emission depletion microscopy (STED)](STED_microscopy.ipynb) (15')

6. Basics of near-field microscopies (AFM) 
   1. [Introduction to AFM](AFM.ipynb)

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
| [Single-molecule localization microscopy (SMLM)](SMLM_tutorial1.ipynb) | up     | Marcelo | This construct will show students how to load an image of sources from a library, and use the ASTROPY package to localize the centers of localizations in 2D. |
| [Structured illumination microscopy (SIM)](SIM_microscopy.ipynb) | up | Marcelo | This construct will show how to load SIM and widefield images and calculate the gain in resolution in the Fourier space. |
| [Stimulated emission depletion microscopy (STED)](STED_microscopy.ipynb) | up | marcelo |Introduction to STED microscopy with practical.|
| [AFM](AFM.ipynb) | up | Luca Costa |Introduction to Atomic Force Microscopy.|

### Genome Biophysics (8.5h)

1. DNA.
   1. [DNA basics](constructs/UE_Introduction/Basics_DNA.ipynb)
   
2. Manipulating DNA
   1. [Studying DNA supercoiling with magnetic tweezers](DNAsupercoiling.ipynb)
   2. [Study of molecular motors using optical tweezers](OT_construct.ipynb)  

3. Nucleosomes and epigenetics
   1. [Nucleosomes](nucleosomeParticle.ipynb) 
   2. [Histone modifications](histoneModifications.ipynb)
   3. [DNA machines](DNAmachines.ipynb) 

4. Transcription factors
   1. [Transcription_factors](transcription_factors.ipynb)
   2. [Study the diffusion of DNA binding proteins using sptPALM](spt_PALM_ParB_proteins.ipynb)

5. Higher-order chromatin structure
   1. [Loading and visualizing a Hi-C matrix](constructs/UE_Introduction/higher-order_chromatin_structure.ipynb)
   2. [Loop extrusion](constructs/UE_Introduction/LoopExtrusion.ipynb)
   3. [Multiplexing imaging methods](constructs/UE_Introduction/HiM.ipynb)
   


| Name                       | Status | Workers | Time | Description |
| -------------------------- | ------ | ------- | ----------| ----------|
| [What is DNA?](Basics_DNA.ipynb)  | up | marcelo | 30' | Introduce DNA: Structure and function. |
| Talk by Gaetan Bellot | n/a | Gaetan Bellot | 45' | How to build 3D shapes using DNA origami. Applications to biotechnology |
| [DNA supercoiling](constructs/UE_Introduction/DNAsupercoiling.ipynb) | up | marcelo |1h| DNA supercoiling, topoisomerases, magnetic tweezers          |
| [Optical tweezers](OT_construct.ipynb) | n/a | F. Pedaci |45'|Introduction to optical tweezers to study motors.|
| [nucleosomes](constructs/UE_Introduction/nucleosomeParticle.ipynb) | up | marcelo |30'|Introduction on structure of nucleosomes. Activity: visualize structure of a nucleosome in pymol.|
| [histoneModifications](constructs/UE_Introduction/histoneModifications.ipynb) | up | marcelo |30'|Basics of histone modifications and epigenetics.|
| [DNA machines](constructs/UE_Introduction/DNAmachines.ipynb) | up | marcelo |30'|Motors involved in DNA processing, including RNA/DNA polymerases, or chromatin remodelers|
| [transcription_factors](constructs/UE_Introduction/transcription_factors.ipynb) | up | marcelo |30'|Introduction on general and specific transcription factors.|
| External Talk | n/a |                  |45'|Thomas Robert (CBS)|
| [Loading and visualizing a Hi-C matrix](constructs/UE_Introduction/HiC_matrices_Bacillus_subtilis.ipynb) | up | Antoine-Marcelo |30'| Studying protein diffusion by spt-PALM                       |
| [The mechanism of loop extrusion](LoopExtrusion.ipynb) | up | marcelo          |30'|Read and comment TIRF microscopy paper demonstrating loop extrusion|
| [Multiplexing imaging methods](constructs/UE_Introduction/HiM.ipynb) | up | marcelo |45'|Hi-M and chromatin tracing|


## Teachers for these modules

- Marcelo Nollmann

- Emmanuel Margeat

- Luca Costa

- Gaetan Bellot

- Thomas Robert

- F. Pedaci



  





