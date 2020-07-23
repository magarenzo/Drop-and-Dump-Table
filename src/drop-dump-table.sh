#!/bin/bash
###
### Drop table and dump data from external database to local for any amount of user-specified tables
###
### Usage:
### - https://github.com/magarenzo/Drop-and-Dump-Table
###
### Options:
### -h / -help / --help = Show this message
###

# Start of help
help() {
    sed -rn 's/^### ?//;T;p' "$0"
}

if [[ $# == 0 ]] || [[ "$1" == "-h" || "$1" == "-help" || "$1" == "--help" ]]; then
    help
    exit 1
fi
# End of help

# Variables
HOST={empty}
HOST_DATABASE={empty}
HOST_LOG_IN='-u {empty} -p{empty}'
LOCAL_DATABASE={empty}
LOCAL_LOG_IN='-u {empty} -p{empty}'

# Functions
main () {
	# Drop Table
	echo -e "\nDropping $@\n"
	mysql ${LOCAL_LOG_IN} -D ${LOCAL_DATABASE} -e "DROP TABLE $@"

	# Dump Table Data
	echo -e "\nDumping $@"
	dump $@
}
dump () {
	mysqldump -h ${HOST} ${HOST_LOG_IN} ${HOST_DATABASE} $@ | mysql ${LOCAL_LOG_IN} ${LOCAL_DATABASE}
}

# Start of script
echo "Starting Script"

for i in "$@"
do
	main $i
done

echo -e "\nScript Completed"
# End of script