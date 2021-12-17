#!/bin/bash

cd $(dirname $0)

rm -f content/*.md

cp -a ../docs/* content/
cp content/README.md content/_index.md
cp content/SUMMARY.md content/index.md
find content/ -name "*.md" | xargs -n 1 sed -i 's/.md//g'


hugo --gc --minify --cleanDestinationDir


# httpserve --path /kubebuilder/ --rootdir public
# httpserve --rootdir public