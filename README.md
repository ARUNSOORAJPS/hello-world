Intersection Traffic Mangement
==============================
 
This directory contains the code for the vehicle count and detection from a traffic video using CNN. The code also has files for creating dataset and the whole training of the CNN. The included files are:  

*my_constants  
--------------
File contains all the constants used by other files in the directory. No constants are initialised inside any of the other files.

* create_dataset_for_training
---------------------------
The file reads the images from the labelled folders and create corresponding dataset using those labels

* cnn_training
------------
Reads the dataset and train the network for detecting or counting the vehicles. This same file is used for creating two weight combinations, one for counting the number of vehicles and another for detecting the type of vehicle in each patch. The best weight combinations are written as one pickel file.  

  1.`best_parameters_stage1`- used for counting vehicles in a given patch  
  2.`best_parameters_stage2`- used for detecting the type of vehicles in a given patch  

* predict_using_cnn
-----------------
This file reads a new image patch and learned weights and predict the output. The same file can predict the count as well as the type of vehcles and we just need to change the weights for that.

* vehicle_detection_and_count_from_video
--------------------------------------
File reads a video and convert into different frames. Each frame is divided into different image patches and sending the patches to the `predict_using_cnn` file for the output. The whole processing of a single frame is done in a fraction of second.

* image_preprocessing
-------------------
We need to preprocess the images before giving to cnn training and testing. The images are normalised , whitened and returned as a single dimensional array.

#Miscellaneous Codes

* create_unlabelled_dataImages_from_video
--------------------------------------
We need a large dataset for the training of cnn. So those images are taken from some traffic videos. This file reads a traffic video and convert each frame in 4 frames into 48 small pieces and saved. From this unlabelled dataset , labelled dataset is created manually.

* created_labelled_dataset_using_cnn
----------------------------------
This file tries to reduce manual effort in creating labelled dataset from the unlabelled dataset. The same trained neural network is used for categorising unlabelled dataset and from that result we can create zero error labelled dataset by minimum amount of manual work. 
