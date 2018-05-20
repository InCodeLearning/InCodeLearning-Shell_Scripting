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
