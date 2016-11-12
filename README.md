## Overview
This repository is meant to facilitate an interactive quick introduction to deep learning.
If you have stumbled upon this repo on your own, there are other better resources for you on the internet.

@Datanauts add your questions, thoughts, concerns, resources in this [community wiki](https://github.com/alexisylchan/introdl/wiki)
If you want to contribute, please [send me a pull request](https://yangsu.github.io/pull-request-tutorial/)!

## Setup
### Tutorial Setup 
To build your own Docker image, see [Build Setup](#build-setup)

- Install Docker https://docs.docker.com/engine/installation/ 
- If you are using NVIDIA CUDA-enabled GPU, install [nvidia-docker](https://github.com/NVIDIA/nvidia-docker)
- Pull Docker image:
    - CPU (Windows):
    
        ``` sudo docker pull alexisylchan/introdlcpu-windows```   
    - CPU (Other operating systems):
    
        ``` sudo docker pull alexisylchan/introdlcpu```
    - GPU (CUDA 7.5):
    
        ``` sudo docker pull alexisylchan/introdlcuda7.5```
    - GPU (CUDA 8):
    
        ``` sudo docker pull alexisylchan/introdlcuda8```
    
- Clone this repository 

    ```git clone --recursive git@github.com:alexisylchan/introdl.git```
    
- Run bash in your Docker container

    - If you're using CPU:
    
      ```chmod 777 start.sh```

      ```./start.sh <absolute_path_to_introdl_folder> <docker_image>```
  
    - If you're using GPU:
        ```sudo docker run -it -p 8888:8888 -p 6006:6006 -v <absolute_path_to_introdl_folder>:/root/introdl <docker_image> bash```

- Start Jupyter within the Docker container

  ```jupyter notebook```
 
<a id="build-setup"></a>
### Build Setup 
- Install Docker https://docs.docker.com/engine/installation/ 
- If you are using NVIDIA CUDA-enabled GPU, install [nvidia-docker](https://github.com/NVIDIA/nvidia-docker)
- Clone this repository 

    ```git clone --recursive git@github.com:alexisylchan/introdl.git```

- In the introdl directory, build your Docker image. This step may take 1-2 hours
  - CPU:    
    - Windows:    
    
        ```sudo docker build -t <your_user_name>/introdl -f Dockerfile.cpu-windows .```    
    
    - Other operating systems: 
    
        ```sudo docker build -t <your_user_name>/introdl -f Dockerfile.cpu .```    
    
  - Machine with NVIDIA CUDA-enabled GPU:
  
        ```sudo docker build -t <your_user_name>/introdl -f Dockerfile.gpu .```    
    
- [Install Google Chrome](https://www.google.com/chrome/browser/desktop/index.html) (I had issues running Jupyter notebook on Firefox within the Docker container)
  - On Ubuntu, you may encounter installation issues which require [enabling the Universe Repository](http://askubuntu.com/questions/148638/how-do-i-enable-the-universe-repository)
- Run bash in your Docker container
    - If you're using CPU:
      ```chmod 777 start.sh```

      ```./start.sh <absolute_path_to_introdl_folder> <docker_image>```
  
    - If you're using GPU:
        
        ```sudo docker run -it -p 8888:8888 -p 6006:6006 -v <absolute_path_to_introdl_folder>:/root/introdl <docker_image> bash```
        
- Start Jupyter within the Docker container

  ```jupyter notebook```

## Attribution
Thank you to the following resources:
- [saiprashanths/dl-docker](https://github.com/saiprashanths/dl-docker) for the deep learning docker file
- [Jason Brownlee's](http://machinelearningmastery.com/time-series-prediction-with-deep-learning-in-python-with-keras/) excellent time series prediction with deep learning in Keras
- [Yhat's blog post](http://blog.yhat.com/posts/stock-data-python.html) on moving averages
- [Logan Engstrom's Fast Style Transfer](https://github.com/lengstrom/fast-style-transfer)
- [NASA APOD](http://apod.nasa.gov/) 

(Please let me know if you would like to be added to this list!)

