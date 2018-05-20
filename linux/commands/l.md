## ls - list directory contents

```bash
# list directory contents
type ll
# often an alias for ls -l, Linux mint ll is aliased to `ls -alF'
type ls
which ls

ls -l # the long format
# example drwxr-xr-x
# first char

b     Block special file.
c     Character special file.
d     Directory.
l     Symbolic link.
s     Socket link.
p     FIFO.
-     Regular file.

# next chars in groups of 3 are, owner permissions, group permissions, and other permissions

read: r, readable; - not readable
write: w, writable; - not writable
executable:
  S     owner set-user-ID mode, group set-group-ID mode. not executable
  s     owner set-user-ID mode, group set-group-ID mode. executable
  x     The file is executable or the directory is searchable.
  -     The file is neither readable, writable, executable, nor set-user-ID nor set-group-ID mode, nor sticky.
  T     The sticky bit is set (mode 1000), but not execute or search permission.
  t     The sticky bit is set (mode 1000), and is searchable or executable.


ls -lrS # list sorting by increasing size
-r      reverse size
-S      sort by file size
```

## lsof - list of open files

```
# check use of /bin/bash file 
lsof /bin/bash
# check use of directory recursively
lsof +D /home/jesse | less
# check user
lsof -u jesse | less
# the line below may take a few seconds, count number of lines
lsof -u jesse | wc -l
# check program info
lsof -c idea # intelliJ Idea
lsof -c bash
# check by process id
lsof -p 10256
# check all internet
lsof -i
# check all tcp/udp
lsof -i tcp
# check by port
lsof -i :80
# check by host port every 3 seconds
lsof -i @localhost:6942 -r 3
```

