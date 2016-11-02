# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# vi key mappings in shell
set -o vi

# make sure tab-completion works
bind '"\C-i":complete'

# put commands executed from history on command line before executing
shopt -s histverify

# User environment variables
if echo $PATH | grep -vq /usr/local/bin ; then
    export PATH=/usr/local/bin:$PATH
fi
if echo $PATH | grep -vq $HOME/bin ; then
    export PATH=$HOME/bin:$PATH
fi

# orbital insight enviroment variables
# NOTE(mmorais): See https://orbitalinsight.atlassian.net/wiki/display/DEVOPS/Dockers
export OI_HOME=~
export OI_ROOT=$OI_HOME/orbital
export OI_BASE=$OI_ROOT/base
export OI_DATA=$OI_ROOT/data
export OI_BACK=$OI_ROOT/back
export OI_CONF=$OI_ROOT/conf
export OI_LOGS=$OI_ROOT/logs
export OI_DOCK=$OI_BASE/ops/docker
export OI_TOOL=$OI_BASE/ops/tools
export OI_PIPE=$OI_BASE/ops/pipelines
# NETWORK is really environment.
export OI_NETWORK=dev2

# standard command aliases
alias src='. ~/.bashrc'
alias ll='ls -lG '
alias la='ls -laG '
alias lh='ls -lhG '
alias g='grep --color '
alias gi='grep --color -i '
alias xg='xargs grep --color '
alias fcc='find . -name "*.cc" '
alias fcpp='find . -name "*.cpp" '
alias fd='find . -type d '
alias ff='find . -type f '
alias fh='find . -name "*.h" '
alias fhh='find . -name "*.hh" '
alias fj='find . -name "*.java" '
alias fjar='find . -name "*.jar" '
alias fp='find . -name "*.proto" '
alias fpy='find . -name "*.py" '
alias fsql='find . -name "*.sql" '
alias py='ping -c 1 www.yahoo.com'
alias ssh='TERM=xterm ssh'
alias dss='diff --side-by-side --suppress-common-lines --width 200'
alias cf='clang-format -style=file '
alias hn='hostname'
alias essh='eval "$(ssh-agent -s)"'
alias assh='ssh-add ~/.ssh/id_rsa'
alias getip='ipconfig getifaddr en0'

# development
alias mktags='ctags --exclude=.tox --exclude=.tmp --exclude=.venv --exclude=build -f .tags -R .'

# pretty print
alias jsonpp='python -mjson.tool'
alias xmlpp='xmllint --format -'

# time
alias datelocal="date '+%s'"
alias dateutc="date -u '+%s'"

# set prompt text to blue and prompt to black
if [ "x$YROOT_NAME" != "x" ]; then
    PS1='\[\e[1;34m\]\u@\h ($YROOT_NAME) \W\[\e[0m\]\$ '
else
    PS1='\[\e[1;34m\]\u@\h \W\[\e[0m\]\$ '
fi

# brew
export GNUBINPATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"

# check and enable the scl
if [ -f /opt/rh/python27/enable ] ; then
    source /opt/rh/python27/enable
fi

