#!/bin/bash

cd ../src
echo "Making directories if necessary"

find . -type d | xargs -n 1 -I %% mkdir -p ../output/%%
for i in `find . -type f -name "*.md" `; do
  echo "Converting $i => ../output/${i/md/html}"
  pandoc $i > ../output/${i/md/html}
done
echo "done"
