## test - condition evaluation utility

```bash
help test | fgrep -- '-x'
help test | grep "\-x"
        -x FILE        True if the file is executable by you.
help test | fgrep -- '-z'
        -z STRING      True if string is empty.

# test what -z means in a if clause
```

## type - how interpreted as command name

```bash
type [-afptP]
$ type -a type
type is a shell builtin
type is /usr/bin/type
```
