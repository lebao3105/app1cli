.PHONY: build add_langs clean

add_langs:
ifndef OS
	${SHELL} ./add_languages.sh
else
	cmd add_languages.bat
endif

build: add_langs app1.pas resource.pas maths.pas app1_utils.pas
	fpc app1.pas

clean:
	rm -f langs/*/*.mo *.o *.ppu *.rsj app1 *.exe langs/*/*.po langs/*/*.o langs/*/*.rsj langs/*/*.ppu