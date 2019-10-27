
# Set the base image to Ubuntu
FROM ubuntu

#
MAINTAINER duzhixing  dzx1@mail.ustc.edu.cn

RUN apt update
RUN apt install -y git
RUN apt install -y make
RUN apt install -y curl

RUN git clone https://github.com/lowRISC/lowrisc-quickstart.git

RUN cd lowrisc-quickstart

RUN make getrelease
