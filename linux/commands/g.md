## grep - file pattern searcher

grep recursively

```bash
grep --color --include="*.xxx" -nrHI "my Text to grep" *
# --include or --include-dir, file or dir pattern to match
# -n, --line-number, prefix each line of output with line number of input file
# -R, -r, --recursive 
# -H, --with-filename
# -I, ignore binary files
# -i, --ignore-case
# --color, highlight matches
# . include files like .git
```
grep view whole file with highlighted pattern

```bash
grep --color -E 'pattern|$' file
grep --color 'pattern\|$' file
egrep --color 'pattern|$' file
# -E, --extended-regexp, interpret pattern as an extended regular expression (i.e. force grep to behave as egrep)
```

grep gz zipped files

```bash
find . -name "*.gz" -exec zgrep -nI "text to search" {} +
```

References

- [SO - grep recursively](https://stackoverflow.com/questions/1987926/how-do-i-grep-recursively)
- [view file with highlighted matches](https://stackoverflow.com/a/981831)
