# SCC

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# User specific aliases and functions

# Set up path
PATH=$PATH:/home/aniat/bin
export PATH

# Set up aliases
alias ql='qlogin -P pulmarray'
alias ll='ls -lrt'
alias ls='ls --color=auto'
alias la='ls -aF'
alias ls10='ls | head -10'
alias ll10='ll | head -10'
alias less='less --RAW-CONTROL-CHARS'

# Color prompt
export PS1='\[\e[1;35m\][\u@\h \w] $\[\e[m\] '

# View CSV
function csview {
  column -s, -t < $1 | less -#2 -N -S
}

# submit job to queue tagging with pulmarray project
alias qsub='qsub -P pulmarray'

# Load R module
module load R
module load linga-proxy

# Custom functions
findin(){ find . -type f -exec grep -r $1 {} + ; }
findinR(){ find . -iname '*.R' -exec grep -r $1 {} + ; }
