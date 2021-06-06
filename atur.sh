#!/bin/bash
cd "$(dirname $0)"
rm -f Packages.bz2

dpkg-scanpackages -m . /dev/null >Packages
bzip2  Packages

git add --all
git commit -m "azmilaila"
