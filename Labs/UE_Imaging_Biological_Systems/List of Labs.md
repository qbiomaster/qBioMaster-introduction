# List of Labs for UE Imaging Biological Systems

[TOC]

## OVERVIEW

The UE Imaging Biological Systems is organized around three sections with increasing levels of complexity:

​	In section I. the students will be taught the good practices when handling potentially hazardous or fragile instruments and will learn how to align optics and characterize them. 

​	In section II. they will design and build an imaging setup (among which a TIRF, a confocal and an AFM). Then they will use it to run simple experiments.

​	In section III. the students will use advanced microscopes used routinely by researchers at CBS. They will design the experiment, participate in the sample preparation and then run the experiment and analyse the data.

| Sections | Hours | Status | Teachers | Description |
| ------------ |----| ------ | ------- | ----------- |
| I. Basics | 1h CM + 4h TP = **5 hours** |       |         | Safety & Good practices |
| II. Build a setup | 4h TD + 12h TP = **16 hours** |      |         | TIRF/Confocal/AFM |
| III. Practicals | 5h TD + ~2x5h TP = **15 hours** |      |         | SMLM/FCS/AFM |

## List of all Labs 



### I. Basics - 5h

* CM 1h : Laser safety + optics handling + objective nomenclature + good practices
* TP 4h (3 groups) : 
  * Good practices = how to align a laser, lens, iris, targets, etc...
  * Set up a telescope (Keplerian vs Galilean telescope)
  * Measure a laser beam waist and divergence
  * Identify laser polarization (linear, circular, ...)
  * Check dichroic transmission with angle?
  * Measure a laser beam spectrum vs LED vs white light?
  * Using an oscilloscope ? + ... ???

At some point, we will need to introduce some softwares (FiJi, Gwyddion...). This could be done either here or during the 2h TD of introduction.



### II. Build a setup - 14h

| Setup | Experiments | Teachers | Comments |
| ----- | ----------- | -------- | ----------- |
| TIRF build+calibrate (beads, grid) | Image nuclear pore complex and cell membrane in Epi vs TIRF | Antoine |             |
| Confocal build+calibrate | Characterize concentration of free dyes in solution | Manu ||
| AFM build+calibrate | Image lipid bilayers? Cell membrane | Luca ||

* TD 2h Introduction 

  *  Optics formula to characterize the system:
     *  Size BFP, objective focal length, objective FOV
     *  Beam expansion (FOV illumination or BFP coverage)
     *  Nyquist (cam pix size)
     *  
  *  Optical aberrations and how to identify them:
     *  spherical, 
     *  astigmatism, 
     *  coma, 
     *  chromatism, 
     *  etc...
  *  Setup simulation tools
  *  

  --> homework : design setup ~4h

* TD 2h Design troubleshooting

* TP 8h (3 groups) : Build setup 

* TP 2h  (3 groups): Run simple experiment

  --> homework : prepare restitution ~4h
  
* Oral restitution + written report + demo (~4h~
=> Here each group will present their design, the difficulties they encountered and how they solved them, the acquisition they ran. Then for each setup, the groups who did not work on it will have to run the same siple experiment under the guidance of the designers.

### III. Practicals - 14h

| Setup | TP1 | Teacher | TP2 |Teacher |
| ---- | ------ | ------- | ----------- |----------- |
|  STORM : NPC | JB / Christine | spt-PALM : ParA/ParB, Plants?, Pol/Rho? | JB / Christine |
|  FCS    | FCS | Caro | N&B, RICS, FRET | Caro |
| dual view on ???| Manu / Robert | smFRET on mGluR | Manu / Robert |
|  AFM-JPK  | AFM | Cédric / PEM | AFM+Fluo | Cédric / PEM |

* CM 15min :  Sample mounting / preparation

* TD 2h : Design experiment
		 homework : read articles provided ahead and prepare the design of the experiment (sample preparation, acquisition conditions, controls to use... )
  ​	--> TD: the aim of this TD is to explain the goal of the two successive TPs, what is the expected progression, check experimental design, give any important information on sample preparation, the setup, check all the details of sample preparation...

* TP 2h : sample preparation #1

* TP 4h : acquisition #1

* TP 2h : sample preparation #2

* TP 4h : acquisition #2

* Data analysis + report preparation

* Oral restitution + written report


| TP | Experiment | Analysis |
| ---- | ------ | ------- |
| STORM | NPC | Reconstruction with Thunderstorm (FiJi), analysis with Python  |
| SPT | ParA-mEos3.2 | Track reconstruction + MSD analysis (which software ?)|
| FCS | ??? | Autocorrelation + Fit models of diffusion, calculate protein concentrations (which software ?)|
| smFRET | ??? | ??? |
| AFM-JPK | ??? | ??? |
| AFM+Fluo | ??? | ??? |