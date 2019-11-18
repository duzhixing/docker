
# Set the base image to Ubuntu
FROM ubuntu

MAINTAINER duzhixing dzx1@mail.ustc.edu.cn

RUN apt update
RUN apt install -y git 
RUN apt install -y make

RUN git clone https://github.com/ucb-bar/rocket-chip.git
WORKDIR rocket-chip
RUN git submodule update --init
WORKDIR riscv-tools
RUN git submodule update --init --recursive

ENV RISCV /opt/riscv

RUN /rocket-chip/riscv-tools/build.sh

WORKDIR emulator

RUN make CONFIG=RoCCExampConfig

