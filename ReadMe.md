# Misr Server Docker

This repo include setup of application suck as: Jupyter, Nextcloud. For running this project, run code below:
```
# Turn on docker
docker-compose up -d

# Restart only one Container
docker-compose restart nginx

# create new one container
docker-compose up nginx

# Delete only one container
docker-compose down nginx

# Access to container
docker exec -it nginx bash

# See the log with following flag
docker logs -f nginx

```

## 1. Nextcloud

After execute docker-compose, please setup content below in /var/www/html/config/config.php
Open config file:
```
docker exec -it nextcloud bash
apt update && apt install vim -y
vim /var/www/html/config/config.php
```
Replace content below:
```
<?php
$CONFIG = array (
  'htaccess.RewriteBase' => '/nextcloud',
  'overwritewebroot' => '/nextcloud',
  'memcache.local' => '\\OC\\Memcache\\APCu'
);
```

## 2. Gitlab
After log-in to system, please change password by using root account below.
```
# Default username: root 
# How to get default password
docker exec -it gitlab grep ‘Password:’ /etc/gitlab/initial_root_password
```

## 3. Wordpress
Some tool support for backup and restore.
```
UpdraftPlus - Backup/Restore
```