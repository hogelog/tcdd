#!/bin/bash

cdddir=$HOME/.cdd
cddfile=$cdddir/cddfile
cddtmp=$cdddir/cddtmp

function cdd_init() {
  if [ ! -d $cdddir ]; then
    mkdir $cdddir
  fi
  touch $cddfile
  touch $cddtmp
}

function cdd_cd() {
  dir=`head -\`perl -e"print \"$1\"+1"\` $cddfile |tail -1`
  builtin cd $dir
}

function cdd_ls() {
  perl -nle 'print "\t", $n++, "  $_"' $cddfile
}

function cdd_rec() {
  ruby -e "c=$1;a=ARGF.read.split;0.upto([c,a.size-1].max){|i|puts((i==c)?'$2':(a[i] ? a[i]:''
))}" $cddfile > $cddtmp
  cp $cddtmp $cddfile
}

function cdd() {
  cdd_init
  if [ $1 ]; then
    cdd_cd $1
    if [ $WINDOW ]; then
      cdd_rec $WINDOW `pwd`
    fi
  else
    cdd_ls
  fi
}

function cd() {
  cdd_init
  builtin cd $@
  if [ $WINDOW ]; then
    cdd_rec $WINDOW `pwd`
  fi
}
