
# Set the base image to Ubuntu
FROM ubuntu

#
MAINTAINER duzhixing  dzx1@mail.ustc.edu.cn

RUN apt install git
RUN apt install make
RUN apt install curl

RUN git clone https://github.com/lowRISC/lowrisc-quickstart.git

RUN cd lowrisc-quickstart

RUN make getrelease
