#!/bin/bash
 
# install homebrew's official php tap
brew tap josegonzalez/homebrew-php
 
# install homebrew-dupes (required to install zlib, php54's dependency)
brew tap homebrew/dupes
 
# install nginx + mysql + php 5.4 + php-fpm + apc + xdebug
brew install nginx mysql
brew install --with-fpm --with-mysql php54
brew install php54-apc php54-mcrypt php54-xdebug
 
 
# add apc + xdebug configs to php.ini:
echo "
 
[apc]
extension = \"`brew --prefix php54-apc`/apc.so\"
apc.enabled = 1
apc.shm_segments = 1
apc.shm_size = 64M
apc.ttl = 7200
apc.user_ttl = 7200
apc.num_files_hint = 1024
apc.mmap_file_mask = /tmp/apc.XXXXXX
apc.enable_cli = 1
 
[xdebug]
zend_extension = \"`brew --prefix php54-xdebug`/xdebug.so\"
xdebug.remote_enable = 1
; use port 9009 because php-fpm uses 9000 by default
xdebug.remote_port = 9009
" >> /usr/local/etc/php/5.4/php.ini
 
 
# set up mysql to run as user account
unset TMPDIR
mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix mysql)" --datadir=/usr/local/var/mysql --tmpdir=/tmp
 
 
# launch mysql on startup
cp `brew --prefix mysql`/homebrew.mxcl.mysql.plist ~/Library/LaunchAgents/
launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
 
 
# launch php-fpm on startup
cp `brew --prefix php54`/homebrew-php.josegonzalez.php54.plist ~/Library/LaunchAgents/
launchctl load -w ~/Library/LaunchAgents/homebrew-php.josegonzalez.php54.plist
 
 
# launch nginx at startup as root (in order to listen on privileged port 80):
sudo cp `brew --prefix nginx`/homebrew.mxcl.nginx.plist /Library/LaunchDaemons/
sudo sed -i -e 's/`whoami`/root/g' `brew --prefix nginx`/homebrew.mxcl.nginx.plist
sudo launchctl load -w /Library/LaunchDaemons/homebrew.mxcl.nginx.plist
 
 
echo "
POST-INSTALL PROCEDURE:
=======================
1) configure intellij / netbeans / phpstorm / eclipse pdt to connect to xdebug on port 9009
"
