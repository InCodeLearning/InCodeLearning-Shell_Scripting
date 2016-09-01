#!bin/bash

# -n list files changed in a pull request
# checks python files for Traceback Errors and pep8 errors

usage="Usage: $0 [-b <branch>] [-n|--name-only]"

branch="jesse"
name_only=false

while [ "$#" -gt 0 ]; do
  case "$1" in
    -b) branch="$2"; shift 2;;
    -n|--name-only) name_only=true; shift 1;;
    -*) echo "unkown option $1" >&2; exit 1;;
    *) echo $usage; exit 1;;
  esac
done

# cd InCodeLearning-Python3

files=$(git diff --diff-filter=AM --name-only dev $branch --)
py_files=$(git diff --diff-filter=AM --name-only dev $branch -- \
           | grep '\.py$')

if [ "$name_only" == true ]; then
  echo "files changed:"
  for file in $files; do
    echo $file
  done
  exit 0
fi

cur_branch=$(git symbolic-ref --short HEAD)

if [ $branch != $cur_branch ]; then
  git checkout $branch
  cur_branch=$branch
fi

echo ">>>> testing branch $branch"

for py_file in $py_files; do
  echo ">> testing $py_file"
  python $py_file | grep Error
  pep8 --first $py_file
done 

if [ "$cur_branch" != "jesse" ]; then
  echo "switch from $cur_branch to jesse"
  git checkout jesse
fi
