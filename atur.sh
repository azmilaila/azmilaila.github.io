rm -r Packages.bz2
rm -r Packages.xz

dpkg-scanpackages -m . /dev/null >Packages
bzip2  Packages
dpkg-scanpackages debs /dev/null > Packages
xz -c9 Packages > Packages.xz

git add --all
git commit -m "azmilaila"
