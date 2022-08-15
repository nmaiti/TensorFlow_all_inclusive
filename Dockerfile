FROM tensorflow/tensorflow:latest-jupyter

RUN apt-get update   &&  apt-get  dist-upgrade -y

RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        clang-format \
        curl \
		wget \
        vim git \
        libcurl3-dev \
        libfreetype6-dev \
        libhdf5-serial-dev \
        libzmq3-dev \
        pkg-config \
        rsync \
        software-properties-common \
        sudo \
        unzip \
        zip \
        zlib1g-dev \
        openjdk-8-jdk \
        openjdk-8-jre-headless \
        clang lldb lld \
        && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

#RUN pip install --quiet --yes \
RUN python3 -m pip install --upgrade pip

RUN python3 -m pip install  \
    Pillow \
    h5py \
    keras_preprocessing \
    tb-nightly \
    matplotlib \
    mock \
#    'numpy<1.19.0' \
    numpy \
    scipy \
    sklearn \
    pandas \
    future \
    portpicker \
    enum34 \
    ipdb \
    opencv-contrib-python \
    seaborn \
    pandas \
    'protobuf < 4'




CMD ["bash", "-c", "source /etc/bash.bashrc && jupyter notebook --notebook-dir=/tf --ip 0.0.0.0 --no-browser --allow-root"]
