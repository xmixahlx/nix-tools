#! /bin/bash

## ENVIRONMENT OVERRIDES

# NIXTOOLSDIR
if [ -z "$NIXTOOLSDIR" ]; then
 export NIXTOOLSDIR="`pwd`"
 export PATH="$NIXTOOLSDIR":"$PATH"
fi

# CC
if [ -z "$CC" ]; then
 CC="ccache gcc-14"
 export CC="$CC"
fi

# CXX
if [ -z "$CXX" ]; then
 CXX="ccache g++-14"
 export CXX="$CXX"
fi

# CFLAGS
if [ -z "$CFLAGS" ]; then
 CFLAGS="-O3 -march=native -B/usr/local/libexec/mold"
 export CFLAGS="$CFLAGS"
fi

# CXXFLAGS
if [ -z "$CXXFLAGS" ]; then
 CXXFLAGS="-O3 -march=native -B/usr/local/libexec/mold"
 export CXXFLAGS="$CXXFLAGS"
fi

# INSTALLDEPS
if [ -z "$INSTALLDEPS" ]; then
 INSTALLDEPS="debian"
fi

# GITBRANCH
if [ -z "$GITBRANCH" ]; then
 GITBRANCH="main"
fi

# DATE
if [ -z "$DATE" ]; then
 DATE="`date +%Y%m%d%H%M%S`"
fi

# RESDIR
if [ -z "$RESDIR" ]; then
 RESDIR="$NIXTOOLSDIR"/resources
fi

# DEVDIR
if [ -z "$DEVDIR" ]; then
 DEVDIR="$NIXTOOLSDIR"/upstream
fi

# GITURL
if [ -z "$GITURL" ]; then
 GITURL="https://github.com"
fi

# GITPRURL
if [ -z "$GIRPRURL" ]; then
 GITPRURL="https://patch-diff.githubusercontent.com"
fi

# GITPRPATCH
if [ -z "$GITPRPATCH" ]; then
 GITPRPATCH="$GITPRURL"/raw/"$GITREPO"/"$GITTREE"/pull/"$GITPR".patch
fi

# PKGDIR
if [ -z "$PKGDIR" ]; then
 PKGDIR="$GITTREE"\_"$GITBRANCH"
fi
