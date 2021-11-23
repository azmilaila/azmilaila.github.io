#!/bin/bash

echo
echo "Rebuilding package list..."
echo "--------------------------"

rm -Rf Packages.bz2
dpkg-scanpackages -m ./debs > Packages
bzip2 Packages

echo "--------------------------"
echo "Done."
echo

git add --all
git commit -m "azmilaila"

echo

git push

echo

git pull


