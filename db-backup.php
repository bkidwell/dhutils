#!/usr/bin/env php
<?php

include 'conf/db-backup.conf.php';
$HOME = getenv("HOME");

if (!file_exists("$HOME/db-backup")) {
    mkdir("$HOME/db-backup", 0770, true);
}

foreach($config as $c) {
    $bakfile = "$HOME/db-backup/${c['backup']}";
    $host = $c['host'];
    $database = $c['database'];
    $user = $c['user'];
    $password = $c['password'];

    shell_exec("mysqldump --host='$host' --user='$user' --password='$password' $database >'$bakfile'");
}
