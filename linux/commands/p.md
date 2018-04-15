## ps - process status

```bash
ps -ef
# -e -A include other uses' processes
# -f Display the uid, pid, parent pid, recent CPU usage, .etc
# -u <username> display process by user name
```

## pstree - list processes as a tree

```
pstree -g 2 -s httpd
# -g <n> use graphic chars for tree: 2 VT100
# -w not truncated wide output
# -s <string> filter by string
# -p <pid> filter by pid
```
