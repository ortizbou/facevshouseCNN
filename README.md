# facevshouseCNN

Alternative Algorithms in “Face Versus House” Discrimination Basing on Event Related Potential\
Authors: Meiby Ortiz-Bouza and Evan Sun\
Department of Electrical and Computer Engineering, Michigan State University, MI\
ECE 884 Final Project

## Introduction
This work uses a Convolutional Neural Network to classify stimuli (picture of a face or a house) on EEG data collected from 7 subjects.
We use the data collected by authors in 

"Spontaneous decoding of the timing and content of human object perception from cortical surface recordings reveals complementary information in the event-related potential and broadband spectral change." Miller, Kai J., Gerwin Schalk, Dora Hermes, Jeffrey G. Ojemann, and Rajesh PN Rao.  PLoS computational biology 12, no. 1 (2016): e1004660.

The authors propose a template projection approach to decode the continuous ECoG data stream spontaneously, predicting the occurrence, timing and type of visual stimulus. In this work, we use the template projection of the ERPs data that they develop to create images representing the type of visual stimulus to be classify by our CNNs.



> quote insert original work here

## Description

The code for their work can be found here https://github.com/Ivy-zhouhq/BCI/tree/master/challenge/decoding-brain-challenge-2016-master
Run the function call_fhpred_master.m that is inside the folder called fhpred to obtain the template projection used in this work.

After you run ```call_fhpred_master.m``` you should find  "subjectID_"erp_cross_folds files in each of the folder name after the subjects, "ca", "ja", etc.

## Creating Images for input of the CNNs

We use two different methods for creating the images for the CNNs.

### Method 1: 
Do a tensor matrix product between the projected ERP of the houses and projected ERP of the faces ate each known time interval where a stimulus occurs, and where non-stimulus occurs (class 0).
Use ```save_tensor_images.m``` to create these images. There are images already created for each of the subjects in ```images/method1```.

### Method 2:
Use Nt x Nc matrices where Nt is the number of samples of the template signal on intervals where a stimulus occurs and Nc is the number of channels.
Create this images using ```create_images2.m```. There are images already created for each of the subjects in ```images/method2```.

## Training the CNNs
For designing and training the CNNs we use the MatLab deepNetworkDesigner toolbox. The CNNs used for this project are in ```projectNetLayers_fin.mat```. These CNNs can be load into deepNetworkDesigner. Upload the data (images) selecting a 30% for validation and train the network selecting the parameters in the TrainingOptions window such that you obtain the desire validation accuracy.

<img src="https://user-images.githubusercontent.com/92049169/167004233-3c117e4b-bbb3-4715-9b17-8fd45f985bc8.png" width="600">



