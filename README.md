# drop-dump-table
Drop table and dump data from external database to local for any amount of user-specified tables

---

[*drop_and_dump_table.sh*](https://github.com/magarenzo/drop-dump-table/blob/master/drop_and_dump_table.sh) takes in any amount of table names, drops those tables from local, and dumps data from those tables from a host

---

<h3>Output:</h3>

Starting Script<br><br>Dropping Table<br><br>Dumping Table<br><br>Script Completed

---

<h3>Variables:</h3>

Make sure to replace each `{empty}` field in the script

* HOST=hostname.where.database.is
* HOST_DATABASE=nameOfDatabase
* HOST_LOG_IN='-u username -ppassword'
* LOCAL_DATABASE=nameOfLocalDatabase
* LOCAL_LOG_IN='-u username -ppassword'

---

<h3>Necessary Installations:</h3>

* [`MySQL`](https://dev.mysql.com/doc/mysql-getting-started/en/)
