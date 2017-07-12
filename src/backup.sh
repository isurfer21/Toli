#!/usr/bin/bash env
printf "\nBackup (v 0.0.1)\nCopyright (c) Abhishek Kumar. All rights reserved.\n"

printf "\nStarted backup\n"

timestamp=$(date +"%Y%m%dT%H%M%SIST")
cd "/Users/kumarab/Documents/Backups/mysql/"

function dbdump() {
	dbname=$1
	printf "\nBacking up: $dbname\n"
	"/usr/local/mysql/bin/mysqldump" -u root -pHCL@kaW8 "$dbname" > "$dbname.sql"
	printf "Stored at $PWD/$dbname.sql\n"
}

dbdump "crat"
dbdump "uca_crat"
dbdump "MaterialTracker"
dbdump "my_wiki"
dbdump "doc"

printf "\nDone!\n"