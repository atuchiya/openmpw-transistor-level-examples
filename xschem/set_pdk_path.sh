#!/bin/sh

TEMPLFILE=./symbols/gf180mcu.sym_template
SYMFILE=./symbols/gf180mcu.sym
GF180_NGSPICE=/foss/pdks/gf180mcuC/libs.tech/ngspice
GF180_DESIGN=design.ngspice
GF180_MODEL=sm141064.ngspice

echo ".include $GF180_NGSPICE/$GF_DESIGN"
echo ".lib $GF180_NGSPICE/$GF_MODEL @corner"

sed -e "s~%NGSPICE%~$GF180_NGSPICE~" -e "s~%DESIGN%~$GF180_DESIGN~" -e "s~%MODEL%~$GF180_MODEL~" $TEMPLFILE > $SYMFILE

echo "File $SYMFILE updated"

#EOF
