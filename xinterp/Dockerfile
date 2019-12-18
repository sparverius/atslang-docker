FROM atslang/ats2:0.4.0

COPY ./.profile /home

RUN git clone https://github.com/xanadu-lang/xinterp.git /home/xinterp
RUN ["/bin/bash", "-c", ". ~/.profile && cd /home/xinterp && sh build.sh"]
