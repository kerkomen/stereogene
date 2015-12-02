#****************************************************************************#
#SeSiMCMC. Looking - for - motifs by MCMC project. (c) A. Favorov 2001
#$Id: gibbslfm.mak 1034 2009-04-17 14:07:27Z favorov $
#****************************************************************************#


exename=StereoGene
od=./obj

srcdirlist=.

empty=
space=$(empty) $(empty)
includeflags = $(foreach dir,$(subst :,$(space),$(srcdirlist)),$(INCLUDEKEY)$(dir)) $(INCLUDECLOSETERM)
#this strange invocation is just preparing -I flag from srcdirlist.

OPTIMISE=YES

include ccvars

.PHONY: all objs clean

vpath %.c $(srcdirlist)
vpath %.cpp $(srcdirlist)

all: $(exename)$(EXEEXT) 

OBJS=$(od)/FourierCorr.o \
	$(od)/bTrack.o \
	$(od)/file_list.o \
	$(od)/kernel.o \
	$(od)/mann.o \
	$(od)/map.o \
	$(od)/out.o \
	$(od)/outwig.o \
	$(od)/tests.o \
	$(od)/trackPrepare.o \
	$(od)/util.o \
	$(od)/mixfft.o \
	$(od)/main.o

objs:$(OBJS)

$(od)/%.o: %.c
	$(CC) $(CCFLAGS) $< -o $@
	
$(od)/%.o: %.cpp
	$(CPP) $(CPPFLAGS) $< -o $@

$(exename)$(EXEEXT): $(OBJS)
	$(CPP) -o $(exename)$(EXEEXT) $(OBJS) $(LINKFLAGS)
	chmod 755 $(exename)$(EXEEXT) 

#generated by g++ -MM *.c*
$(od)/FourierCorr.o: FourierCorr.cpp track_util.h
$(od)/bTrack.o: bTrack.cpp track_util.h
$(od)/file_list.o: file_list.cpp track_util.h
$(od)/kernel.o: kernel.cpp track_util.h
$(od)/mann.o: mann.cpp track_util.h
$(od)/map.o: map.cpp track_util.h
$(od)/out.o: out.cpp track_util.h
$(od)/outwig.o: outwig.cpp track_util.h
$(od)/tests.o: tests.cpp track_util.h
$(od)/trackPrepare.o: trackPrepare.cpp track_util.h
$(od)/util.o: util.cpp track_util.h
$(od)/mixfft.o: mixfft.c
$(od)/main.o: main.cpp track_util.h

clean:
	rm -f $(OBJS)
	rm -r -f *~
