#!/bin/bash

echo "Making directories if necessary"

cd src
find . -type d | xargs -n 1 -I %% mkdir -p ../output/%%
for i in `find . -type f -name "*.md" `; do
  echo "Converting $i => ../output/${i/md/html}"
  pandoc -H ../porcelain/header.html $i > ../output/${i/md/html}
done
cp ../porcelain/*css ../output
echo "done"
