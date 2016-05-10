# db-t3kit

[![Release](https://img.shields.io/github/release/t3kit/t3kit_db.svg?style=flat-square)](https://github.com/t3kit/t3kit_db/releases)

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

### To restore database
Run
```shell
restoredb.sh
```
from inside the vagrant vm to restore database


# Contributing

## Style Guide
This project uses special style guides. Those rules you can find on appropriate file: `.editorconfig`

* [editorconfig](http://editorconfig.org)


## Git commit conventions and output formatting
Please use semantic labels for your messages, but if commit message is not very important, you can skip labels. All commits with labels will be added in CHANGELOG file, that's why it is **important to use predefined labels** on your commits.

####Git labels:
* **[FEATURE]** A new feature
* **[FIX]** A bug fix
* **[REFACTOR]** A code change that neither fixes a bug or adds a feature
* **[PERF]** A code change that improves performance.
* **[CHORE]** Changes to the build process (grunt) or auxiliary tools and libraries such as documentation generation and linters (jshint, jscs, etc.)
* **[DOC]** Documentation only changes
* **[STYLE]** Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
* **[TEST]** Adding missing tests
* **[UPDATE]** Updating git submodules, npm/bower dependencies


Please ensure any pull requests of fixes **follow this closely**. If you notice existing code which doesn't follow these practices, feel free to shout and we will address this.
