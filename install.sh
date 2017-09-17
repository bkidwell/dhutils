chmod +x ~/dhutils/db_backup.php
mkdir -p ~/dhutils/conf
chmod 770 ~/dhutils/conf
if [ ! -f ~/dhutils/conf/db_backup.conf.php ]; then
    cp ~/dhutils/templates/db_backup.conf.php.example ~/dhutils/conf/db_backup.conf.php
fi

cp ~/dhutils/templates/bash_profile ~/.bash_profile
chmod 644 ~/.bash_profile
echo Installed .bash_profile. Please log back in.

logout
