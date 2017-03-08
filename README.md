# t3kit v8 (BETA) database

### t3kit_db [![Release](https://img.shields.io/github/release/t3kit/t3kit_db.svg?style=flat-square)](https://github.com/t3kit/t3kit_db/releases)

***

## t3kit_db for t3kit v7

Previous version of **t3kit_db** for t3kit **v7** you can find on branch [t3kit7](https://github.com/t3kit/t3kit_db/tree/t3kit7), or you can use git tags to chose needed version:
```
git checkout 0.0.6
or
git checkout 0.5.1
```
_this message will be here until stable version of **t3kit v8**_

***



### [CHANGELOG](https://github.com/t3kit/t3kit_db/blob/master/CHANGELOG.md)
### [CONTRIBUTING](https://github.com/t3kit/t3kit/blob/master/CONTRIBUTING.md)


### To update database dump
Run

    packdb.sh

from inside the vagrant vm or docker container to generate dump. It will dump the database to a file, parameters are specified in the script. It will clear be_users and som  other tables from the dump. It will merge the be_users.sql into the dump to create only be_users from this dump. Currently admin - admin1234 and cli_scheduler.
Commit and push from local filesystem.

### To update be_users table
Run

    create_new_beusers_sql.sh

from inside the vagrant vm or docker container before running pack.db

### To restore database
Run

    restoredb.sh
    
from inside the vagrant vm or docker container to restore database
