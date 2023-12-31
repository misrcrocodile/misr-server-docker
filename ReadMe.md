# Misr Server Docker

This repo include setup of application suck as: Jupyter, Nextcloud. For running this project, run code below:
```
docker-compose up -d
```

## 1. Nextcloud

After execute docker-compose, please setup content below in /var/www/html/config/config.php
```
<?php
$CONFIG = array (
  'htaccess.RewriteBase' => '/nextcloud',
  'overwritewebroot' => '/nextcloud',
  'memcache.local' => '\\OC\\Memcache\\APCu'
);
```
