# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

DEFAULT_USER="smelikoglu"

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
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git osx terminalapp colored-man vi-mode)
plugins=(git osx terminalapp)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export PATH=/usr/local/mysql/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/Postgres.app/Contents/MacOS/bin:$PATH

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

# postgres
alias start_postgres "postgres -D /usr/local/var/postgres"
# also following commands work
# lunchy start postgres
# lunchy stop postgres

# nginx
alias nginx_start="sudo /usr/local/bin/nginx.sh"
alias nginx_stop="sudo /usr/local/sbin/nginx -s quit"
alias nginx_status="ps ax | grep nginx"

# common shortcuts
alias ll="ls -alh"
alias l="ls -alh"
alias la="ls -alh"
alias catc="pygmentize -O style=monokai -f console256 -g"
alias gs="git status -sb"

# python related
alias django_path="cd /Library/Python/2.7/site-packages/django"
alias python_packages="cd /Library/Python/2.7/site-packages"
alias runserver="python manage.py runserver_plus"
alias runserver192="python manage.py runserver_plus 192.168.0.12:8000"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

#################################################
# Change theme of terminal when sshing
# see: https://coderwall.com/p/-9gz5q 
#################################################

# Change theme of Terminal.app
#tabc() {
#    NAME="${1:-IR_Black}"
#    osascript -e "tell application \"Terminal\" to set current settings of front window to settings set \"$NAME\""
#}
#
## Change to Danger theme when executing ssh
#ssh() {
#    tabc Danger
#    /usr/bin/ssh "$*"
#    tabc
#}
export FLAGS_GETOPT_CMD="$(brew --prefix gnu-getopt)/bin/getopt"
export VIRTUALENV_DISTRIBUTE=true
