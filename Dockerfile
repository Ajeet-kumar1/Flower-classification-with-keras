# Load an image of ubuntu and python
FROM ubuntu:16.04
FROM python:3.6
# Give the maintainer info
MAINTAINER Ajeet kumar

# Install all dependancies
RUN pip install numpy==1.18.5
RUN pip install scipy==1.4.1
RUN pip install tensorflow==2.2.0
RUN pip install keras==2.3.1
RUN pip install matplotlib==3.2.2
RUN pip install sklearn
RUN pip install opencv-python==4.1.2.30

# Copy the model and test data set
COPY test_images1.npy /
COPY test_labels1.npy /
COPY model.h5 /

# Copy the inference file
COPY inference.py /

# Giving permission to inference program
RUN chmod u+x ./inference.py

# Running inference program
CMD ["python","inference.py"]







