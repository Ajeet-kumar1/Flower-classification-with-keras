import matplotlib.pyplot as plt
import tensorflow
from keras.models import load_model
import numpy as np

# Load test data
testx = np.load('test_images1.npy')
testy = np.load('test_labels1.npy')

# Visualize a sample of test data
plt.imshow(testx[100])
print(testy[100])

# Load the model and evaluate accuracy
model = load_model("model.h5")
score = model.evaluate(testx, testy)
print('Test loss:', score[0])
print('Test accuracy:', score[1] * 100)

# Predict output on sample input data
pred = model.predict(testx)
pred = np.argmax(pred, axis=1)[:10]
label = np.argmax(testy, axis=1)[:10]




