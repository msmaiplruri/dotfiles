#!/bin/zsh
function _t2p-mkdirs {
    for v in $lst; do
        if [ ! -d $v ]; then
            mkdir $v
            echo "mkdir $v"
        fi
    done
}

function _t2p-mvs {
    setopt nonomatch
    for v in $lst; do
        if ls *.$v > /dev/null 2>&1; then; mv *.$v $v/; fi
    done
}

function _t2p-clean {
    for v in $lst; do
        local fn=$v/$1.$v
        if [ -e $fn ]; then
            rm $fn
            echo "rm $fn"
        fi
    done
}

function t2p {
    lst=(log aux pdf dvi)
    if [ $1 = "--clean" -o $1 = "-C" ]; then
        local fn=$(echo $2 | sed -e s/\.tex//)
        _t2p-clean $fn
    else
        ptex2pdf -u -l -i $1
        _t2p-mkdirs
        _t2p-mvs
    fi
}
