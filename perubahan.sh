./hapus.sh

dpkg-scanpackages -m . /dev/null >Packages
bzip2 Packages

git add --all
git commit -m "azmilaila"
