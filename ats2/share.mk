######

HOMEQ=${PWD}/ats

######

ATS2VER=0.4.0

INTKIND=gmp

###### ATS2

PATSHOMEQ=$(HOMEQ)/ATS2
PATSHOME=$(PATSHOMEQ)

ATS2PACK=ATS2-Postiats-$(INTKIND)-$(ATS2VER)
ATS2PACKTGZ=$(ATS2PACK).tgz
# ATS2LANGURL_srcfg=https://sourceforge.net/projects/ats2-lang
# ATS2TGZPATH=files/ats2-lang/ats2-postiats-$(ATS2VER)/$(ATS2PACKTGZ)
# ATS2TGZURL=$(ATS2LANGURL_srcfg)/$(ATS2TGZPATH)
ATS2LANGURL_github=https://github.com/sparverius
ATS2TGZPATH=ATS2-release-test/releases/download/ats2-test-rel/$(ATS2PACKTGZ)
ATS2TGZURL=$(ATS2LANGURL_github)/$(ATS2TGZPATH)

######

BASHRC=${HOME}/.bashrc

###### 

GCC=gcc
CLANG=clang
WGETQ=wget -q
TARZXF=tar -zxf
MAKE=make
RMRF=rm -rf

######

export PATSHOME=$(PATSHOMEQ)
exportats2:: ; export PATH=${PATH}:$(PATSHOMEQ)/bin

bashrcats2:: ; echo "export PATSHOME=$(PATSHOME)" >> $(BASHRC)
bashrcats2:: ; echo "export PATH=\$${PATSHOME}/bin:\$${PATH}" >> $(BASHRC)

######
