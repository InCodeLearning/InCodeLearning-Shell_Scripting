# counts number of carriage returns in a file
usage="$0 <file>"

if [ $# -ne 1 ]; then echo usage; exit 1; fi

grep -c $'\r$' $1
# use \r\n for carriage return and line feed
# awk -v RS='\r\n' 'END{print NR}' file adds 1 EOF to the count
