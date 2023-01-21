FROM ubuntu:14.04

RUN apt-get update &&\
    apt-get upgrade -y &&\
    apt-get install -y \
        git \
        build-essential \
        cmake \
        gcc \
        gcc-multilib \
        g++-multilib 

RUN git clone https://github.com/RPISEC/MBE.git

RUN cd MBE && pwd && ls && mkdir ./build && cd build && cmake ../ && make && make install
