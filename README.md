# Joomla local install

This sets you up a full Vagrant environment with PHP 5.3 and xdebug.

## Motivation

Software development projects benefit from reproducibility, and getting a developer set up is quite a large costly task...

If you model your production environments on CentOS then you will have a reliable way of ensuring your code works across platforms.

## Steps

### Recommended: Use phpStorm

1. Install Vagrant
    - http://downloads.vagrantup.com/
    - (1.3.5 is tested)
2. Install VirtualBox
    - https://www.virtualbox.org/wiki/Downloads

### PhpStorm-only
3. Inside phpstorm, open your this project
4. Tools > Vagrant > Up (and then wait for your VM to be provisioned
5. Ensure there is no firewall blocking incoming connections on port 9000 on your host machine.
6. Add the lines in "hosts" to your hosts file

### Requires Akeeba backup on production environment
7. Download Akeeba Kickstart - https://www.akeebabackup.com/download/akeeba-kickstart.html
8. Place the kickstart files in the http directory
9. Place the ****.jpa backup in the http directory
10. Navigate to joomla-site.local and follow on screen instructions


##MySQL Settings

user: root

pass: \<no password\>

database: joomla
