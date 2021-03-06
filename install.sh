cd ~/dhutils

git config core.fileMode false
chmod +x db-backup.php
chmod +x install.sh
chmod +x rdiff-backup
chmod +x rdiff-backup.files/rdiff-backup
chmod +x rdiff-backup.files/rdiff-backup-statistics

mkdir -p conf
chmod 770 conf
if [ ! -f conf/db-backup.conf.php ]; then
    cp templates/db-backup.conf.php.example conf/db-backup.conf.php
fi

cp templates/bash_profile ~/.bash_profile
chmod 644 ~/.bash_profile
echo Installed .bash_profile. Please log out and log back in for .bash_profile to take effect.
