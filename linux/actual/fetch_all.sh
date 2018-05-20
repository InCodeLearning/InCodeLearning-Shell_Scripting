#!/bin/bash
# fetch all changes in specified git branches
# Usage: fetchall.sh branch ...

set -xe
git fetch --all
for branch in "$@"; do
  git checkout $branch || exit 1
  git pull --rebase || exit 1
done

if [ $branch != "jesse" ]; then
  git checkout jesse
fi
