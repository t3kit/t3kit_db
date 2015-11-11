# db-t3kit

Just to make the t3kit TYPO3 database available for other projects. 

### To update database dump
Run
```shell
packdb.sh
```
from inside the vagrant vm to generate dump. It will dump the database to a file, parameters are specified in the script. It will clear be_users and som  other tables from the dump. It will merge the be_users.sql into the dump to create only be_users from this dump. Currently admin - admin1234 and cli_scheduler. 
Commit and push from local filesystem.

### To update be_users table
Run
```shell
create_new_beusers_sql.sh
```
from inside the vagrant vm before running pack.db