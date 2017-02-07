#!/bin/bash

# lsof: list of open files
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
