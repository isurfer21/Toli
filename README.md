# Toli - Pratilekhak

**Pratilekhak** is a database backup creator.

It can be used to take automatic backup of your existing MySQL database present on Mac OSX using crontab.

### How to setup crontab task

To see a list of your active crontab jobs, use the following command:

```
$ crontab -l
```

Our script is called backup.sh, and will dump my MySQL database to a zip file. We'll set it to run as a cronjob by editing the job list (with the nano editor):

```
env EDITOR=nano crontab -e
```

Now enter the following and press ```CTRL+O``` and ```CTRL+X``` to save and exit.

```
0 12 * * *  cd ~/my/backup/folder && ./backup.sh
```

This will execute the command every day at 12:00, which changes to the folder of the script and runs it. The double ampersand && allows you to specify multiple commands that will run after each other.

Notice that if your computer is shut down or sleeping at the time, the script will not run until the next day at the specified time.

Usually vim is the default terminal editor on Mac OSX, so you can use that as well via below command:

```
$ crontab -e
```

Now enter the timer & path of bash file as discussed above.

Hit the ESC key to get into Normal (command) mode then type ```:q``` and press ```Enter```.

To quit without saving any changes, type ```:q!``` and press ```Enter```.

