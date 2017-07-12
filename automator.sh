#!/usr/bin/bash env

destDir="$HOME/Documents/Programs/utilities"
currentDir="$PWD"
printf "\nCopying the bash file \n - $currentDir/src \n - $destDir \n"
cp "$currentDir/src/backup.sh" "$currentDir/destDir.sh"
printf "\nDone!\n"