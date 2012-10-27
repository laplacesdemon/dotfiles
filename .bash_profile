export PS1="[\e[0;32m\]\W\e[m]\[\e[0;31m\] > \e[m\]"
export PATH=/usr/local/mysql/bin:/usr/local/bin:/usr/local/sbin:$PATH
alias hibernateon="sudo pmset -a hibernatemode 5"
alias hibernateoff="sudo pmset -a hibernatemode 3"
export CLICOLOR=1
export LSCOLORS="DxGxFxdxCxdxdxhbadCxCx"

# server shortcuts
alias mysql_start="sudo /Library/StartupItems/MySQLCOM/MySQLCOM start"
alias mysql_stop="sudo /Library/StartupItems/MySQLCOM/MySQLCOM stop"
alias mysql_status="ps xa | grep ""/usr/local/mysql/bin/[m]ysqld"""
# Start MySQL:  /usr/local/mysql/support-files/mysql.server start
# Stop MySQL:  /usr/local/mysql/support-files/mysql.server stop
alias apacheRestart="sudo /usr/sbin/apachectl restart"
alias apacheStart="sudo /usr/sbin/apachectl start"
alias apacheStop="sudo /usr/sbin/apachectl stop"

# nginx
alias nginx_start="sudo /usr/local/bin/nginx.sh"
alias nginx_stop="sudo /usr/local/sbin/nginx -s quit"
alias nginx_status="ps ax | grep nginx"

# common shortcuts
alias ll="ls -alh"
alias l="ls -alh"
alias la="ls -alh"

# alias to frequent places
alias www="cd /Users/solomon/DEV/PHP/"

# ssh shortcuts
alias sshTimete="ssh -i /Users/solomon/Projects/Timete/Management/credentials/solomon_rsa solomon@ec2-46-51-130-107.eu-west-1.compute.amazonaws.com"
alias ssh_timete="ssh -i /Users/solomon/Projects/Timete/Management/credentials/solomon_rsa solomon@ec2-46-51-130-107.eu-west-1.compute.amazonaws.com"
export TIMETE="ec2-46-51-130-107.eu-west-1.compute.amazonaws.com"

# python related
alias django_path="cd /Library/Python/2.7/site-packages/django"
alias python_packages="cd /Library/Python/2.7/site-packages"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# add pythonbrew as first thing in the $PATH
[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc

# directory shortcuts
export MUSIC_DIR="Music/iTunes/Music/"
