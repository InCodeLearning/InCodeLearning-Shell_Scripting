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
