#!/bin/bash

#Variables
HOST={empty}
HOST_DATABASE={empty}
HOST_LOG_IN='-u {empty} -p{empty}'
LOCAL_DATABASE={empty}
LOCAL_LOG_IN='-u {empty} -p{empty}'

#Functions
main () {
	#Drop Table
	echo -e "\nDropping $@\n"
	mysql ${LOCAL_LOG_IN} -D ${LOCAL_DATABASE} -e "DROP TABLE $@"

	#Dump Table Data
	echo -e "\nDumping $@"
	dump $@
}
dump () {
	mysqldump -h ${HOST} ${HOST_LOG_IN} ${HOST_DATABASE} $@ | mysql ${LOCAL_LOG_IN} ${LOCAL_DATABASE}
}

#Start of script
echo "Starting Script"

for i in "$@"
do
	main $i
done

echo -e "\nScript Completed"
#End of script
