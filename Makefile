files=$(*.o)\
    $(*.ppu)\
    $(*.exe)\
    $(app1)

.PHONY: build_units	build_prog	all	help

build_units:
@$(ECHO)	"Building app1 Libraries..."
$(FPC)	app1_utils.pas
$(FPC)	maths.pas
@$(ECHO)	"Building completed."

all:	build_prog	help

build_prog:
# you can use this instead of "all" target
@$(ECHO)	"Building the program... This usually takes about 12 seconds."
$(FPC) app1.pas
@$(ECHO)	"Done."

help:
@$(ECHO)	"Use all target to build the program and print this help"
@$(ECHO)	"Target build_units builds the units which are used for app1."
@$(ECHO)	"clean will remove all build outputs"

clean:
$(RM)	$(files)
