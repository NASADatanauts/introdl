#!/bin/bash
sudo docker run -it -p 8888:8888 -p 6006:6006 -v $1:/root/introdl $2 bash
