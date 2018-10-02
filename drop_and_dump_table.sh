#!/bin/bash

#Variables
HOST={empty}
DATABASE={empty}
HOST_LOG_IN='-u {empty} -p{empty}'
LOCAL_LOG_IN='-u {empty} -p{empty}'

#Functions
main () {
	#Drop Table
	echo -e "\nDropping $@\n"
	mysql ${LOCAL_LOG_IN} -D ${DATABASE} -e "DROP TABLE $@"

	#Dump Table Data
	echo -e "\nDumping $@"
	dump $@
}
dump () {
	mysqldump -h ${HOST} ${HOST_LOG_IN} ${DATABASE} $@ | mysql ${LOCAL_LOG_IN} ${DATABASE}
}

#Start of script
echo "Starting Script"

for i in "$@"
do
	main $i
done

echo -e "\nScript Completed"
#End of script
