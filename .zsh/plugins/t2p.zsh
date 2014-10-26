#!/bin/zsh
function _t2p-mkdirs {
    lst=(log aux pdf dvi)
    for v in $lst; do
        if [ ! -d $v ]; then
            mkdir $v
            echo "mkdir $v"
        fi
    done
}

function _t2p-mvs {
    setopt nonomatch
    lst=(log aux pdf dvi)
    for v in $lst; do
        if ls *.$v > /dev/null 2>&1; then; mv *.$v $v/; fi
    done
}

function _t2p-clean {
    lst=(log aux dvi)
    for v in $lst; do
        fn=$v/$1.$v
	    if [ -e $fn ]; then
            rm $fn
            echo "rm $fn"
        fi
    done
}

function t2p {
    if [ $1 = "--clear" -o $1 = "-C" ]; then
        fn=$(echo $2 | sed -e s/\.tex//)
        _t2p-clean $fn
    else
        ptex2pdf -u -l -i $1
        _t2p-mkdirs
        _t2p-mvs
    fi
}
