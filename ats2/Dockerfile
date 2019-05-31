FROM atslang/ats1

COPY ./Makefile_ats2 ${HOME}/ats/
COPY ./share.mk ${HOME}/ats/

RUN make -C ${ATS} -f Makefile_ats2 all
