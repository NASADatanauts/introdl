## Overview
This repository is meant to facilitate an interactive quick introduction to deep learning.
If you have stumbled upon this repo on your own, there are other better resources for you on the internet.

@Datanauts add your questions, thoughts, concerns, resources in this [community wiki](https://github.com/alexisylchan/introdl/wiki)

## Setup
- Install Docker https://docs.docker.com/engine/installation/ 
- Clone this repository 

    ```git clone --recursive git@github.com:alexisylchan/introdl.git```

- In the introdl directory, build your Docker image. This step may take 1-2 hours
  - If you will be running on a CPU-based tensorflow  
  
    ```sudo docker build -t <your_user_name>/introdl -f Dockerfile.cpu .```    
  - If you will be running on a GPU-based tensorflow
  
    ```sudo docker build -t <your_user_name>/introdl -f Dockerfile.gpu .```    
    
- [Install Google Chrome](https://www.google.com/chrome/browser/desktop/index.html) (I had issues running Jupyter notebook on Firefox within the Docker container)
  - On Ubuntu, you may encounter installation issues which require [enabling the Universe Repository](http://askubuntu.com/questions/148638/how-do-i-enable-the-universe-repository)
- Run bash in your Docker container

  ```sudo docker run -it -p 8888:8888 -p 6006:6006 <your_user_name>/introdl bash```
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

