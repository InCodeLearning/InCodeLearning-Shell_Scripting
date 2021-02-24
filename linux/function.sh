function Hello() {
    echo "Hello!"
    now
}

# function key word can be omitted
now() {
    echo "It's $(date +%r)"
}

Hello

hello_all() {
    for name in $@
    do
        echo "Hello $name"
    done
}

hello_all Mary Lamb Cat

function backup_file() {
  if [ -f "$1" ]
  then
    local BACKUP_FILE="/tmp/$(basename ${1}).$(date +%F).$$" # $$ current PID to avoid override each time
    echo "Backing up $1 to ${BACKUP_FILE}"
    cp $1 $BACKUP_FILE # exit status of function will be exit status of this cp command
  else
    return 1
  fi
}
