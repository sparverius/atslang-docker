FROM atslang/ats2

COPY ./Makefile_tmpr ${HOME}/ats/
COPY ./Makefile_temp ${HOME}/ats/
COPY ./share.mk ${HOME}/ats/

RUN make -C ${ATS} -f Makefile_tmpr all
RUN make -C ${ATS} -f Makefile_temp all
