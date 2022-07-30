FROM gcr.io/kaggle-gpu-images/python

RUN apt-get install -y --allow-change-held-packages libcudnn8

# Still need this despite CuDNN update:
RUN ln -s /usr/local/cuda/lib64/libcusolver.so.10 /usr/local/cuda/lib64/libcusolver.so.11

COPY container_run_notebook.sh /
