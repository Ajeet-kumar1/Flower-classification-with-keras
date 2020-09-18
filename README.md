# Building and training a classification model using keras

To develope the classification model with keras there are some steps..

**1. Introduction to keras** : Keras is an open-source neural-network library written in Python. It is capable of running on top of TensorFlow, Microsoft Cognitive Toolkit, R, Theano, or PlaidML

**2. Understanding the dataset** : The dataset which is used in this model is [102 flower classification](https://www.robots.ox.ac.uk/~vgg/data/flowers/102/).This dataset contains flowers of 102 categories, each class consisting of between 40 and 258 images.The data format is simple, a directory containing images and a .mat file containing labels.

**3. Loading dataset** : In this classification Google Colab is used to load as well as train and save the model.

**4. Preprocessing dataset** : Our datset contains pictures of flowers
*  Resize the image to 150 X 150
*  Normalize image pixels to [0,1] for fast calculation and convergence.
*  Now convert labels to one-hot encoded vector.

**5. Create model** : Develope a model with help of keras and train it through our train dataset.
*  Add convolution layers
*  Add maxPooling layers
*  Make flat and dense your output.

**6. Save and test** : Once model trained save and load to do some test on *test dataset* .

**7. inference** : Now just make another separate inference file to load model and make some prediction on randomly selected test dataset.


# Containerize and Push application on dockerhub


Edit the Dockerfile.

1. Pull a images of ubuntu and python.
2. Copy inference.py, requirements, model and images folder.
3. Run requirements to download the dependencies.
4. Write command to run inference.py on CMD


**Build image using docker build -t**.
1. Testing the image using docker run.
2. Get the IMAGE ID using docker images to tag our image.
3. Tag the image and push to dockerhub repo.



