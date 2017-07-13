#!/usr/bin/bash env
printf "\nBackup (v 0.0.1)\nCopyright (c) Abhishek Kumar. All rights reserved.\n"

printf "\nStarted backup\n"

timestamp=$(date +"%Y%m%dT%H%M%SIST")
repoBranch="master"
repoLoc="/Users/kumarab/Documents/Backups/mysql/"

function getRecovery() {
	schema=$1
	printf "\nBacking up: $schema\n"
	"/usr/local/mysql/bin/mysqldump" -u root -pHCL@kaW8 "$schema" > "$schema.sql"
	printf "Stored at $PWD/$schema.sql\n"
}

cd "$repoLoc"
getRecovery "crat"
getRecovery "uca_crat"
getRecovery "MaterialTracker"
getRecovery "my_wiki"
getRecovery "doc"

printf "\nCheckout `$repoBranch` branch\n"
git checkout "$repoBranch"
git fetch
git pull

printf "\nChanged files in `$repoBranch`\n"
git status

printf "\nAdding all changed files in next commit\n"
git add .

printf "\nCommiting all local changes in tracked files\n"
git commit -am "Taken repository backup"

printf "\nPushing all local changes on remote repository in odc_master branch\n"
git push origin "$repoBranch"

printf "\nFinished at $timestamp\n"

printf "\nDone!\n"