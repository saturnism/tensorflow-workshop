FROM tensorflow/tensorflow:0.11.0rc0

RUN pip install -U Pillow scikit-learn
RUN mkdir -p /tutorial
WORKDIR /tutorial

ADD . /tutorial/

ENTRYPOINT ["sh", "-c", "jupyter notebook --ip=* --no-browser"]
