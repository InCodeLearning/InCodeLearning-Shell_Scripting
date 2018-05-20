## scp - secure copy (remote file copy program)

```bash
scp user@remote_host.com:/some/remote/directory ~/my_local_file.txt
scp /home/stacy/images/image*.jpg stacy@myhost.com:/home/stacy/archive
# copy multiple files
scp foo.txt bar.txt username@remotehost:/path/directory/
scp username@remotehost:/path/directory/\{foo.txt,bar.txt\} .
```

## select - provide options to be selected

```
select choice in Yes No; do
    echo $choice # print blank line if selection is neither 1 or 2
    echo "press ctrl-D or ctrl-C to break"
done
```

## sleep - suspend execution for an interval of time

```bash
sleep <n>
# sleep n seconds
sleep 3
echo "schedule a command execution 3 seconds later"
# $ bash sleep.sh &
# [1] 55837
# $ ps -fp 55837
# UID   PID  PPID   C STIME   TTY           TIME CMD
# 1266305152 55837 45986   0 10:01PM ttys001    0:00.00 bash sleep.sh
# $ pstree -p 55837
#  \-+= 57530 jz bash sleep.sh
#    \--- 57531 jz sleep 90
```
