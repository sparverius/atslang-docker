FROM atslang/ats2:0.4.0

COPY ./.profile /home

RUN git clone https://github.com/xanadu-lang/xinterp.git
RUN ["/bin/bash", "-c", ". ~/.profile && cd /home/ats/Xanadu/srcgen/xats && make all libxatsopt"]
