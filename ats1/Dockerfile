FROM ubuntu:latest

RUN apt-get -qq update && \
apt-get -qq install -y gcc make git wget time gawk automake \
libgmp-dev libgc-dev libjson-c-dev unzip && \
rm -rf /var/lib/apt/lists/* && \
apt-get autoremove && \
apt-get clean 


WORKDIR /home
ENV HOME=/home
ENV ATS=/home/ats

COPY .bashrc ${HOME}/
COPY ./ats ${HOME}/ats

RUN make -C ${ATS} -f Makefile_ats1 all
