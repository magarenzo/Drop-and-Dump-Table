# Drop and Dump Table

Drop table and dump data from external database to local for any amount of user-specified tables

## About

Take in any amount of table names, drops those tables from local, and dumps data from those tables from a host

## Output

Starting Script<br><br>Dropping Table<br><br>Dumping Table<br><br>Script Completed

## Variables

Make sure to replace each `{empty}` field in the script

* HOST=hostname.where.database.is
* HOST_DATABASE=nameOfDatabase
* HOST_LOG_IN='-u username -ppassword'
* LOCAL_DATABASE=nameOfLocalDatabase
* LOCAL_LOG_IN='-u username -ppassword'

## Dependency

[`MySQL`](https://dev.mysql.com/doc/mysql-getting-started/en/)

## Owner

Michael A. Agarenzo
