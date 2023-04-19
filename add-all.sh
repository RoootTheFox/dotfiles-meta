#!/bin/bash
echo "adding all existing repos as submodule"
for f in */.git; do
    a=$(git --git-dir=$f remote get-url origin)
    git submodule add $a ${f::-5}
done
