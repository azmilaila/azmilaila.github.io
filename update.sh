#!/bin/bash

echo

./clean.sh

echo
echo "Rebuilding package list..."
echo "--------------------------"

rm -f Packages.bz2
dpkg-scanpackages -m . /dev/null >Packages
bzip2  Packages

echo "--------------------------"
echo "Done."
echo
echo

git add --all
git commit -m "azmilaila"

echo
echo

git push

echo

azmilaila