
# Set the base image to Ubuntu
FROM ubuntu

#
MAINTAINER duzhixing  dzx1@mail.ustc.edu.cn

RUN sudo apt install git
RUN sudo apt install make
RUN sudo apt install curl

RUN git clone https://github.com/lowRISC/lowrisc-quickstart.git

RUN cd lowrisc-quickstart

RUN make getrelease
