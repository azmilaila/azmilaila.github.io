./hapus.sh

dpkg-scanpackages -m . /dev/null >Packages
bzip2 Packages

git commit -m "laila"
