FROM ubuntu:16.04
FROM python:3.6

MAINTAINER Ajeet kumar

RUN pip install numpy==1.18.5
RUN pip install scipy==1.4.1
RUN pip install tensorflow==2.2.0
RUN pip install keras==2.3.1
RUN pip install matplotlib==3.2.2
RUN pip install sklearn
RUN pip install opencv-python==4.1.2.30


COPY test_images1.npy /
COPY test_labels1.npy /

COPY model.h5 /

COPY inference.py /
RUN chmod u+x ./inference.py


CMD ["python","inference.py"]







