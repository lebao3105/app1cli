.PHONY: build gen_po gen_mo clean
SHELL = /bin/bash
gen_po: resource.pas
	fpc resource.pas
	xgettext -d app1cli -o po/app1cli.pot resource.rsj
	for i in $$(ls -d po/*/); do cp po/app1cli.pot $${i%%/}/app1cli.po && msgmerge -U $${i%%/}/app1cli.po po/app1cli.pot; done

gen_mo:
	for i in $$(ls -d po/*/); do msgfmt $${i%%/}/app1cli -o $${i%%/}/app1cli.mo; done

build: gen_mo app1.pas resource.pas maths.pas app1_utils.pas
	fpc app1.pas

clean:
	rm -f po/*/*.mo *.o *.ppu *.rsj app1 *.exe