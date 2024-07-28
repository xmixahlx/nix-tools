#!/bin/bash

if [ "$NIXTOOLSDIR" ]; then
 echo "*** NIXTOOLSDIR selected is $NIXTOOLSDIR."
fi

if [ "$CC" ]; then
 echo "*** CC selected is $CC."
fi

if [ "$CXX" ]; then
 echo "*** CXX selected is $CXX."
fi

if [ "$CFLAGS" ]; then
 echo "*** CFLAGS selected is $CFLAGS."
fi

if [ "$CXXFLAGS" ]; then
 echo "*** CXXFLAGS selected is $CXXFLAGS."
fi

if [ "$INSTALLDEPS" ]; then
 echo "*** INSTALLDEPS selected is $INSTALLDEPS."
fi

if [ "$GITBRANCH" ]; then
 echo "*** GITBRANCH selected is $GITBRANCH."
fi

if [ "$DATE" ]; then
 echo "*** DATE selected is $DATE."
fi

if [ "$RESDIR" ]; then
 echo "*** RESDIR selected is $RESDIR."
fi

if [ "$DEVDIR" ]; then
 echo "*** DEVDIR selected is $DEVDIR."
fi

if [ "$GITURL" ]; then
 echo "*** GITURL selected is $GITURL."
fi

if [ "$GITREPO" ]; then
 echo "*** GITREPO selected is $GITREPO."
fi

if [ "$GITTREE" ]; then
 echo "*** GITTREE selected is $GITTREE."
fi

if [ "$PKGDIR" ]; then
 echo "*** PKGDIR selected is $PKGDIR."
fi

