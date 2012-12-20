# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

DEFAULT_USER="solomon"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="solomon"

# My fav themes are
# robbyrussell
# eastwood
# gallois
# miloshadzic
# agnoster
# solomon

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx django pip terminalapp)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Users/solomon/.pythonbrew/bin:/Users/solomon/.pythonbrew/pythons/Python-2.7.2/bin:/usr/local/mysql/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

# copied from bash_profile
#
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

# python related
alias django_path="cd /Library/Python/2.7/site-packages/django"
alias python_packages="cd /Library/Python/2.7/site-packages"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# add pythonbrew as first thing in the $PATH
[[ -s $HOME/.pythonbrew/etc/bashrc ]] && source $HOME/.pythonbrew/etc/bashrc

# directory shortcuts
export MUSIC_DIR="Music/iTunes/Music/"
