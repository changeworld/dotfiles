#!/bin/bash

for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".DS_Store" ]] && continue
    ln -s `pwd`/"$f" ~/"$f"
done

ln -s `pwd`/.rbenv/default-gems ~/.rbenv/default-gems
