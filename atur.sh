#!/bin/bash
cd "$(dirname $0)"
rm -r Packages.bz2
rm -R Packages
dpkg-scanpackages -m . /dev/null >Packages
bzip2  Packages
dpkg-scanpackages -m . /dev/null >Packages
xz  Packages

git add --all
git commit -m "azmilaila"
