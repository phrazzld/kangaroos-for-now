# Pull latest Jupyter Notebook image w/Tensorflow
FROM jupyter/tensorflow-notebook:latest
# Gotta be root to have permission to do anything around here
USER root
RUN apt-get install -y ca-certificates && update-ca-certificates
# Set working directory
WORKDIR /code
# Pull Mask_RCNN
RUN git clone https://github.com/matterport/Mask_RCNN.git
RUN cd Mask_RCNN && python setup.py install
RUN cd /code
# Pull kangaroos dataset
RUN git clone https://github.com/experiencor/kangaroo.git
# Pull MS COCO model file (architecture and weights)
RUN wget https://github.com/matterport/Mask_RCNN/releases/download/v2.0/mask_rcnn_coco.h5
# Copy everything into /code
COPY . /code
# Don't wanna get caught being root
#USER jovyan
# Run Jupyter Notebook on localhost
CMD ["jupyter", "notebook", "--allow-root", "--no-browser", "--ip", "0.0.0.0", "--port", "8888", "."]
#CMD jupyter notebook --no-browser --ip 0.0.0.0 --port 8888 .
