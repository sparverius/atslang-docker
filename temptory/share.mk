######

HOMEQ=${PWD}/ats

######

ATS2VER=0.3.13
TMPVER=0.0.0

INTKIND=gmp

###### ATS1

ATSHOMEQ=$(HOMEQ)/ATS1
ATSHOME=$(ATSHOMEQ)

ATSVER=0.2.12
ATSHOMERELOCQ=ATS-0.2.12
ATSHOMERELOC=$(ATSHOMERELOCQ)

ATSPACK=ats-lang-anairiats-$(ATSVER)
ATSPACKTGZ=$(ATSPACK).tgz
ATSLANGURL_github=https://ats-lang.github.io
ATSTGZURL=$(ATSLANGURL_github)/ATS-Anairiats/$(ATSPACKTGZ)

###### ATS2

PATSHOMEQ=$(HOMEQ)/ATS2
PATSHOME=$(PATSHOMEQ)

ATS2PACK=ATS2-Postiats-$(INTKIND)-$(ATS2VER)
ATS2PACKTGZ=$(ATS2PACK).tgz
ATS2LANGURL_srcfg=https://sourceforge.net/projects/ats2-lang
ATS2TGZPATH=files/ats2-lang/ats2-postiats-$(ATS2VER)/$(ATS2PACKTGZ)
ATS2TGZURL=$(ATS2LANGURL_srcfg)/$(ATS2TGZPATH)

###### Temptory-Release

TEMPTORYBUILDQ=$(HOMEQ)/Temptory-Release
TEMPTORYBUILD=$(TEMPTORYBUILDQ)
TEMPTORYURL=https://github.com/sparverius/Temptory-Release.git

###### 

TEMPTORYQ=$(HOMEQ)/ATSTMP
TEMPTORY=$(TEMPTORYQ)

TMPNAME=ATS-Temptory-$(INTKIND)knd-$(TMPVER)
TMPPACK=$(TMPNAME).tgz 

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

export ATSHOME=$(ATSHOMEQ)
export ATSHOMERELOC=$(ATSHOMERELOCQ)
exportats1:: ; export PATH=${PATH}:$(ATSHOMEQ)/bin

export PATSHOME=$(PATSHOMEQ)
exportats2:: ; export PATH=${PATH}:$(PATSHOMEQ)/bin

export TEMPTORYBUILD=$(TEMPTORYBUILDQ)

export TEMPTORY=$(TEMPTORYQ)

######

bashrcats1:: ; echo "export ATSHOME=$(ATSHOME)" >> $(BASHRC)
bashrcats1:: ; echo "export ATSHOMERELOC=$(ATSHOMERELOC)" >> $(BASHRC)
bashrcats1:: ; echo "export PATH=\$${ATSHOME}/bin:\$${PATH}" >> $(BASHRC)
bashrcats1:: ; echo "$$ATSHOME"

bashrcats2:: ; echo "export PATSHOME=$(PATSHOME)" >> $(BASHRC)
bashrcats2:: ; echo "export PATH=\$${PATSHOME}/bin:\$${PATH}" >> $(BASHRC)

bashrctemp:: ; echo "export TEMPTORY=$(TEMPTORY)" >> $(BASHRC)
bashrctemp:: ; echo "export PATH=\$${TEMPTORY}/bin:\$${PATH}" >> $(BASHRC)

######
