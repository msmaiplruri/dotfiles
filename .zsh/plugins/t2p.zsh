function _mkdirs {
    if [ ! -d log ]; then; mkdir log; fi;
    if [ ! -d aux ]; then; mkdir aux; fi;
    if [ ! -d pdf ]; then; mkdir pdf; fi;
    if [ ! -d dvi ]; then; mkdir dvi; fi;
}

function _mvs {
    setopt nonomatch

    if ls *.log > /dev/null 2>&1; then; mv *.log log/; fi;
    if ls *.aux > /dev/null 2>&1; then; mv *.aux aux/; fi;
    if ls *.pdf > /dev/null 2>&1; then; mv *.pdf pdf/; fi;
    if ls *.dvi > /dev/null 2>&1; then; mv *.dvi dvi/; fi;
}

function t2p {
    ptex2pdf -u -l -i $1
    _mkdirs
    _mvs
}

