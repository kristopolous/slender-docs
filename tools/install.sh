#!/bin/bash

echo "Making directories if necessary"

pw=`pwd`
cd src
find . -type d | xargs -n 1 -I %% mkdir -p ../output/%%
for i in `find . -type f -name "*.md" `; do
  echo "Converting $i => ../output/${i/md/html}"

  pandoc \
    -H $pw/porcelain/header.html\
    -B $pw/porcelain/before-body.html\
    $i > ../output/${i/md/html}
done
cp -r ../porcelain/assets ../output
echo "done"
