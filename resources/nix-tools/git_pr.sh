#!/bin/bash

## GITPR
echo "*** Processing $GITPR pull request from git."
if [ $GITPR ]; then
 rm -f $DEVDIR/$GITTREE\_$GITPR.patch
 wget $GITPRPATCH -O $DEVDIR/$GITTREE\_$GITPR.patch
 patch -p1 < $DEVDIR/$GITTREE\_$GITPR.patch
fi
