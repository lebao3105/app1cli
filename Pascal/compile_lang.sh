#!/bin/bash
# A better version of make gen_po.
# This will use all files on langs, which means we will use all available languages here.
# I won't use msgmerge to generate .po

for i in $(ls langs | grep .pas); do
    #echo $i
    sed -i 's/const/resourcestring/g' langs/$i
    fpc langs/$i
    if [[ $? == 0 ]]; then
        sed -i 's/resourcestring/const/g' langs/$i
    fi
done

for files in $(ls langs | grep .rsj); do
    mv langs/${files} langs/${files/lang_/}
    for k in $(ls -d po/*/); do
        xgettext -d app1cli -o $k/app1cli.po langs/${files/lang_}
    done
done

# Edit .po files
attrs_before=(
    "charset=CHARSET"
    "YEAR THE PACKAGE'S COPYRIGHT HOLDER"
    "PACKAGE" "VERSION" "FULLNAME"
    "<EMAIL@ADDRESS>" ", YEAR."
    # Language (line 15) is not changed yet
)

attrs_after=(
    "charset=UTF-8"
    "2021-2022 Le Bao Nguyen"
    "app1cli" "1.3-dev" "Le Bao Nguyen"
    "<notshowedyet@address>" ", 2022."
)

for items in $(ls -d po/*/); do
    # This part does not working yet
    # So I just change the charset
    #for o in ${attrs_before[@]}; do
    #    for p in ${attrs_after[@]}; do
    #        sed -i 's/$o/$p/g' ${items%%/}/app1cli.po
    #    done
    #done
    # That's all.
    sed -i 's/charset=CHARSET/charset=UTF-8/g' ${items%%/}/app1cli.po
    msgfmt ${items%%/}/app1cli -o ${items%%/}/app1cli.mo
done

if [[ $1 == "clean" ]]; then
    rm -f langs/*.{o, ppu, rsj}
    rm -f po/*/*.mo
fi
