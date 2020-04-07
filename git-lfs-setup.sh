#!/bin/zsh


# https://github.community/t5/Support-Protips/Working-with-large-files-and-repositories/ba-p/9343
# https://git-lfs.github.com/


brew install git-lfs
git lfs install
git lfs track "*.jar"
git add .gitattributes
git add file.jar
git commit -m "Add jar file"
git push
