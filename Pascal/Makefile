.PHONY: build gen_po gen_mo clean

ifndef OS
	SHELL = /bin/bash
endif

gen_po: resource.pas
	@echo This script does not support Windows. *nix only.
	@echo This only requires resource.pas - it's English language!
	@echo To use all languages, run compile_lang.sh instead.
	fpc resource.pas
	xgettext -d app1cli -o po/app1cli.pot resource.rsj
	for i in $$(ls -d po/*/); do cp po/app1cli.pot $${i%%/}/app1cli.po && msgmerge -U $${i%%/}/app1cli.po po/app1cli.pot; done
	@echo "Please change the charset to UTF-8 in all po & pot files from po folder."

gen_mo:
	for i in $$(ls -d po/*/); do msgfmt $${i%%/}/app1cli -o $${i%%/}/app1cli.mo; done

build: gen_mo app1.pas resource.pas maths.pas app1_utils.pas
	fpc app1.pas

clean:
	rm -f po/*/*.mo *.o *.ppu *.rsj app1 *.exe