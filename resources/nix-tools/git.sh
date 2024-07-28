#!/bin/bash

## GIT
echo "*** Updating git repository."
if [ ! -d "$PKGDIR" ]; then
 git clone --recursive --depth=1 "$GITURL"/"$GITREPO"/"$GITTREE".git --branch="$GITBRANCH" "$PKGDIR"
fi
cd "$PKGDIR"
git clean -dfx
git reset --hard
git pull
git submodule update --init --recursive --depth=1
