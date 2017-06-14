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
if echo $MANPATH | grep -vq $HOME/share/man ; then
    export MANPATH=$HOME/share/man:$MANPATH
fi

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
alias fgo='find . -name "*.go" '
alias fh='find . -name "*.h" '
alias fhh='find . -name "*.hh" '
alias fj='find . -name "*.java" '
alias fjar='find . -name "*.jar" '
alias fp='find . -name "*.proto" '
alias fpy='find . -name "*.py" '
alias py='ping -c 1 www.yahoo.com'
alias ssh='TERM=xterm ssh'
alias dss='diff --side-by-side --suppress-common-lines --width 200'
alias cf='clang-format -style=file '
alias hn='hostname'
alias essh='eval "$(ssh-agent -s)"'
alias assh='ssh-add ~/.ssh/github.id_rsa'
alias drmc='docker rm $(docker ps --all --quiet --filter status=exited)'
alias gopwd='export GOPATH=$(pwd)'

# development
alias mktags='ctags --exclude=.tox --exclude=.venv --exclude=build -f .tags -R .'
alias mkgtags='gotags -f .tags -R .'

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

# go
if echo $PATH | grep -vq go ; then
    export PATH=$PATH:$(go env GOPATH)/bin
fi
export GOPATH=$(go env GOPATH)

# brew
if echo $PATH | grep -vq gnubin ; then
    export PATH=/usr/local/opt/gnu-tar/libexec/gnubin:$PATH
fi
if echo $MANPATH | grep -vq gnuman ; then
    export MANPATH=/usr/local/opt/gnu-tar/libexec/gnuman:$MANPATH
fi

# check and enable the scl
if [ -f /opt/rh/python27/enable ] ; then
    source /opt/rh/python27/enable
fi

