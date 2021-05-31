rm -r Packages.bz2
rm -r Packages.xz

#!/bin/bash
cd "$(dirname $0)"
rm -f Packages
rm -f Packages.xz
rm -f Packages.zst
dpkg-scanpackages -m . /dev/null >Packages
bzip2  Packages
dpkg-scanpackages debs /dev/null > Packages
xz -c9 Packages > Packages.xz

git add --all
git commit -m "azmilaila"
