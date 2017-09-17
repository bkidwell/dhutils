#!/usr/bin/env php-7.1
<?php

include 'conf/db_backup.conf.php';
$HOME = getenv("HOME");

if (!file_exists("$HOME/db_backup")) {
    mkdir("$HOME/db_backup", 0770, true);
}

foreach($conf as $c) {
    $bakfile = "$HOME/db_backup/${c['backup']}.sql";
    $host = $c['host'];
    $database = $c['database'];
    $user = $c['user'];
    $password = $c['password'];

    shell_exec("mysqldump --host='$host' --user='$user' --password='$password' $database >'$bakfile'");
}
