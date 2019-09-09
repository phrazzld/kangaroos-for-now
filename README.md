# Kangaroos For Now

A Dockerized Jupyter Notebook for object detection. Follows [Jason Brownlee's tutorial](https://machinelearningmastery.com/how-to-train-an-object-detection-model-with-keras/) to get acquainted with general principles and [Mask_RCNN](https://github.com/matterport/Mask_RCNN).

## Usage
```
git clone https://github.com/phrazzld/kangaroos-for-now.git
cd kangaroos-for-now
docker build -t phrazzld/kangaroos-for-now .
docker run -p 8888:8888 phrazzld/kangaroos-for-now
```

Note: if you're running *kangaroos-for-now* on a machine without GPUs, it's going to take a painfully long time to train your model. I run it on an [AWS EC2 Deep Learning AMI instance](https://aws.amazon.com/marketplace/pp/B077GCH38C)).
