# TensorFlow_all inclusive Cpu package with Jupyter
TensorFlow 2 with keras Jupyter and other standard ML library as well ans linux build-essential package included.
Extended docker image for experiments on ML image processing and experimental ML programs



## Included linux tools
	build-essential
	clang-format
	curl
	wget
	git
	libcurl3-dev
	libfreetype6-dev
	libhdf5-serial-dev
	libzmq3-dev
	pkg-config
	rsync
	software-properties-common
	sudo
	unzip
	zip
	zlib1g-dev
	openjdk-8-jdk
	openjdk-8-jre-headless
	clang lldb lld

## Included python packages
    Pillow
    h5py
    keras_preprocessing
    tb-nightly
    matplotlib
    mock
    numpy
    scipy
    sklearn
    pandas
    future
    portpicker
    enum34
    ipdb
    opencv-contrib-python
    seaborn
    pandas
    'protobuf < 4'
    
## To build the docker image 
```$ docker build -t $(USER)/tf_devel_jupyter  .```

## To run image and use Jupyter + shell
```$ docker run --rm -it  -v $(pwd):/tf/work  -p 8888:8888 -p 6006:6006  --name jupyter_docker $(USER)/tf_devel_jupyter ```

## To do access for Bash based access and run (Note basic vim included -withot plugins ) 
```$ docker exec -it jupyter_docker bash ```

### Without building you can use by dockerhub image
```$ docker run --rm -it  -v $(pwd):/tf/work  -p 8888:8888 -p 6006:6006 --name jupyter_docker nbmaiti/tf_devel_jupyter```



