import tensorflow as tf

mnist = tf.keras.datasets.mnist
(x_train, y_train), (x_test, y_test) = mnist.load_data()
x_train, x_test = x_train / 255.0, x_test / 255.0

print("TensorFlow version:", tf.__version__)

#hello = tf.constant('Hello, TensorFlow!')
#sess = tf.compat.v1.Session()
#print(sess.run(hello))

# Check if a GPU is available
gpu_available = tf.config.list_physical_devices('GPU')

if gpu_available:
    print("GPU is available.")
else:
    print("GPU is NOT available.")
