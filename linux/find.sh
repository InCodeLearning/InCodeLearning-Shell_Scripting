#!/bin/bash

# find file search tool

# find all log files in current directory
find . -name "*.log"
# find by permission
find /opt/google -perm 777
# find by type f for regular file
find . -type f -name "*.log"
# type d directory
find ./.thunderbird -type d | sort
# find by size
find . -size +10M -print

# find regular files and list details
# semicolon is required to mark the end of the command
find . -type f ls -l {} \;
# not exactly same as above
find . -type f | ls -l
# find files not modified in last 5 days and delete
find . -mtime +5 -ok rm {} \;
# find sh files and then find lines with "xed" in there
find . -name "*.sh" -exec grep xed {} \;
# this greps in file name instead of file content
find . -name "*.sh" | grep "office"
# move files
find . -name "*.log" -exec mv {} \;
# copy files
find . -name "*.log" -exec cp {} test3 \;

# some systems have limitations on the command length passed to -exec
# some systems use one thread for each file passed to -exec
# xargs process a batch of files instead of all, just one thread
find . -type f -print | xargs file
# find core dump and save
# find / -name "core" -print | xargs echo "" >/tmp/core.log
# find files with read and write permissions and remove write
# find . -perm -7 -print | xargs chmod o-w
# search hostname in regular files
find . -type f -print | xargs grep "hostname"
# use -p to confirm before execution
find . -name "*.sh" | xargs -p mv {} ..
