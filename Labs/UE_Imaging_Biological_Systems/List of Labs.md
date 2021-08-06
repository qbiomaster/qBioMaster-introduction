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
  * oscilloscope ? ...



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
  *  Fiji + others ? (Gwyddion ?)
  *  

  --> homework : design setup ~4h

* TD 2h Design troubleshooting

* TP 8h (3 groups) : Build setup 

* TP 2h  (3 groups): Run simple experiment 

  --> homework : prepare restitution ~4h
  
* Oral restitution + written report + demo other groups (4h)
=> the goal is to have all the groups being familiarized with all setups (to start preparing the second session of TPs). The binome who built the setup will explain and guide the others to use their setup and run an acquisition.

### III. Practicals - 14h



| Setup | TP1 | Teacher | TP2 |Teacher |
| ---- | ------ | ------- | ----------- |----------- |
|  PALM  | STORM : NPC | JB / Christine | spt-PALM : ParA/ParB, Plants?, Pol/Rho? | JB / Christine |
|  FCS    | FCS | Caro | N&B, RICS, FRET | Caro |
| dual-view ?| TIRF FRET | smFRET | Robert, Manu |
|  AFM-JPK  | AFM | Cédric / PEM | AFM+Fluo | Cédric / PEM |

* CM 15min :  Sample mounting / preparation

* TD 2h : Design experiment

  ​	--> TD: check design (sample preparation, which dyes, read papers, acquisition conditions, expected results and analysis...)

* TP 2h : sample preparation #1

* TP 4h : acquisition #1

* TP 2h : sample preparation #2

* TP 4h : acquisition #2

* Data analysis + report preparation

* Oral restitution + written report


| TP | Experiment | Analysis |
| ---- | ------ | ------- |
| STORM | NPC | Reconstruction with Thunderstorm |
| SPT | ParA-mEos3.2 | Track reconstruction + MSD analysis |
| N&B | strains UE SynBio | Autocorrelation + Fit models of diffusion + Analysis concentrations |
| smFRET | ??? | ??? |
| AFM-JPK | ??? | ??? |
| AFM+Fluo | ??? | ??? |