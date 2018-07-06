<h2 align="center">Introductory Machine Learning Term Project</h2>
<h3 align="center">Face Recognizer System</h3>
<h4 align="center">Description</h4>
The goal of this homework was to implement a face recognition system, that will process a database of 50 different people with 15 images each. Our implementation was done with Matlab. Instead of jpg files, our program works with pgm files since they are lighter and easier to convert into arrays of unsigned 8 bit numbers. In the next section we will have a more in-depth explaination of the working principle of our program.

<h4 align="center">Principle</h4>
In order to perform the face recognition, our algorithm first converts the .pgm images into matrices containing decimal or integers values. The purpose of dealing with matrices is to perform the calculation of eigenvectors of the correlation matrix for each image. Note that an eigenvector of a linear transformation changes by only a scalar factor (called eigenvalue) when that linear transformation is applied to a given vector. Therefore, our algorithm will also compute the minimum eigenvalue of the images (matrices) while performing the recognition process. One weakness of this method is that some testcases may fail just because of the similarity of the subject's head positioning and rotation. We will more discuss this issue in the "challenges" section of this report.

<h4 align="center">How to Run the Project files</h4>

<h4>Step1</h4>
First perform the data training by running the "data_training.m" file.

<h4>Step2</h4>
Run the "face_recognition.m" file. A test image will be randomly chosen, and the program will try to identify the current person. Below are some screenshots of the results of our Face Recognition System. 

<h4></h4>


<h4 align="center">Performance of our Recognition Algorithm</h4>

Our program has an overall accuracy of nearly 80%. And 8 testcases were successful out of 10.

<img width="1440" alt="screen shot 2018-07-06 at 7 18 13 pm" src="https://user-images.githubusercontent.com/38835734/42376373-8ad1997a-8151-11e8-98c5-e415186373ef.png">

<img width="1440" alt="screen shot 2018-07-06 at 5 38 24 pm" src="https://user-images.githubusercontent.com/38835734/42376393-98dd6184-8151-11e8-92d7-9c6d7acb5e7c.png">

<img width="1440" alt="screen shot 2018-07-06 at 5 38 37 pm" src="https://user-images.githubusercontent.com/38835734/42376408-a7dce4a2-8151-11e8-9b58-f7c8057fb9e1.png">

<img width="1440" alt="screen shot 2018-07-06 at 5 38 57 pm" src="https://user-images.githubusercontent.com/38835734/42376430-b5caf356-8151-11e8-8bc2-9a1c679c5d64.png">

<img width="1440" alt="screen shot 2018-07-06 at 5 39 13 pm" src="https://user-images.githubusercontent.com/38835734/42376455-cb97d000-8151-11e8-9a14-b8833a7f9521.png">

<img width="1440" alt="screen shot 2018-07-06 at 5 39 27 pm" src="https://user-images.githubusercontent.com/38835734/42376473-d951cc5a-8151-11e8-9648-0122f30414ed.png">

<img width="1440" alt="screen shot 2018-07-06 at 5 39 38 pm" src="https://user-images.githubusercontent.com/38835734/42376487-e5e5839e-8151-11e8-80a0-3a310a4a4c08.png">

<img width="1440" alt="screen shot 2018-07-06 at 5 40 07 pm" src="https://user-images.githubusercontent.com/38835734/42376494-f25b9c58-8151-11e8-960f-520d4950b427.png">

<img width="1440" alt="screen shot 2018-07-06 at 5 42 10 pm" src="https://user-images.githubusercontent.com/38835734/42376529-0fe9e180-8152-11e8-846e-ae1ad2973cd5.png">

<img width="1440" alt="screen shot 2018-07-06 at 5 43 47 pm" src="https://user-images.githubusercontent.com/38835734/42376564-241de6ec-8152-11e8-9b6a-16cd54cb06b3.png">



<h4 align="center">Implementation Challenges</h4>
<h4></h4>
One of the main challenges we faced during the implementation and testing of this project was converting all the input images in pgm format. In fact, we had in total 750 .jpg images to convert into .pgm (15 images of 50 people). Converting this large amount of images was an exhausting task. Also, our algorithm randomly selects a person (one image) for the recognition. Since the selection is based on an index, we had some issues identifying the index of a specially designated test image (for the demo). Overall, our project was completed successfuly and its performance is satisfactory (80%), it was a very instructive project.
