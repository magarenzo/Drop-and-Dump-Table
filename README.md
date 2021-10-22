# Drop and Dump Table

Drop table and dump data from external database to local for any amount of user-specified tables

## Overview

Take in any amount of table names, drops those tables from local, and dumps data from those tables from a host

## Using the Script

Make sure to replace each `{empty}` field in the script

```sql
HOST=hostname.where.database.is
HOST_DATABASE=nameOfDatabase
HOST_LOG_IN='-u username -ppassword'
LOCAL_DATABASE=nameOfLocalDatabase
LOCAL_LOG_IN='-u username -ppassword'
```

### Output

```
Starting Script

Dropping Table

Dumping Table

Script Completed
```

## Dependency

[`MySQL`](https://dev.mysql.com/doc/mysql-getting-started/en/)

## Owner

[Michael Agarenzo](https://linkedin.com/in/magarenzo)
