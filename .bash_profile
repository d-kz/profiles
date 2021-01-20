if [ -f $HOME/.bashrc ]; then
        source $HOME/.bashrc
fi


parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export CLICOLOR=1

# iterm hotkey setup: https://stackoverflow.com/questions/30850430/iterm2-hide-show-like-guake


# REVERSE-I-SEARCH
# ignore these commands for reverse search in terminal
export HISTIGNORE="ls:pwd:history:py3:ws:cd:h" #"cd:pwd:ls:history:l"
HISTSIZE=10000
HISTFILESIZE=$HISTSIZE
HISTCONTROL=ignorespace:ignoredups
# write to global history (append each time)
_bash_history_sync() {
    builtin history -a         #1
    HISTFILESIZE=$HISTSIZE     #2
    builtin history -c         #3
    builtin history -r         #4
}
# prepend regular history command
history() {                  #5
    _bash_history_sync
    builtin history "$@"
}
PROMPT_COMMAND=_bash_history_sync
# alias
alias h='history'



# COLORS
RESET='\033[0m'
RED='\[\e[1;31m\]'
BOLDYELLOW='\[\e[1;33m\]'
GREEN='\[\e[0;32m\]'
BLUE='\[\e[1;34m\]'
DARKBROWN='\[\e[1;33m\]'
DARKGRAY='\[\e[1;30m\]'
CUSTOMCOLORMIX='\[\e[1;30m\]'
DARKCUSTOMCOLORMIX='\[\e[1;32m\]'
LIGHTBLUE="\[\033[1;36m\]"
PURPLE='\[\e[1;35m\]'
LIGHTGRAY='\[\e[1;37m\]'

# BASICS
alias l='ls -ahl'
# date sorted
alias ld='ls -ahl -lt' 
# folder highlight: http://www.marinamele.com/2014/05/customize-colors-of-your-terminal-in-mac-os-x.html (order and color specification)
export LSCOLORS="EHfxcxdxBxegecabagacad" 
# for some reason this affects previous ls commands too (to highlight folders)
alias ls='ls -alGH'   

# bash line
export PS1="${LIGHTGRAY}[\$(date +%H:%M)]${RESET}🍒${BLUE} \w${RESET}${GREEN}\$(parse_git_branch)${RESET}:\n"
export PATH="/usr/local/bin:$PATH"
# Created by `userpath` on 2020-08-18 22:48:28
export PATH="$PATH:/Users/denis/.local/bin"
# for tiptip default flask server
export PORT='5000'
# export PYTHONPATH=/Users/denis/Documents/PROJECTS:/Users/denis/Documents/PROJECTS/LocalNewsLab:$PYTHONPATH



# FOLDERS
alias ws='cd /Users/deniskazakov/Documents/WS'
alias docs='cd ~/Documents'


# PYENV
export PATH="$HOME/.pyenv/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
eval "$(pyenv virtualenv-init -)"
export LDFLAGS="-L/usr/local/opt/zlib/lib -L/usr/local/opt/bzip2/lib"
export CPPFLAGS="-I/usr/local/opt/zlib/include -I/usr/local/opt/bzip2/include"
# pyenv virtualenv 3.8.0 apps3 - to crate new environment
alias py3='pyenv activate tools'
alias pybark='pyenv activate bark'
alias tiptip='cd /Users/denis/Documents/PROJECTS/tiptip; pyenv activate tiptip'
alias jup='jupyter notebook'
alias normal='pyenv deactivate'
# Basic pacakges
# pip install sklearn eli5 pdpbox datetime tqdm pytest pandas numpy fastparquet lightgbm tsfresh lightgbm python-snappy pyarrow dvc notebook autopep8

# alias python2='python'
# https://medium.com/@henriquebastos/the-definitive-guide-to-setup-my-python-workspace-628d68552e14 - setup guide
# At this point never use python2 and it only messes things up
alias python='python3'
export WORKON_HOME=~/.ve
export PROJECT_HOME=~/workspace
eval "$(pyenv init -)"
#pyenv virtualenvwrapper_lazy
alias 'pickle_view'='python /Users/denis/pickle_view.py'

# NOTEBOOK
# -T adds toolbar, since I want all the extensions visible
alias dark='jt -t chesterish -T'
alias light='jt -t default'
# add ctrl-D multiselect to jupyter if it disappears
alias multiselect='cat ~/bin/jupyter_multiselect.js >> ~/.jupyter/custom/custom.js'


# PIP
# install and skip pacakges that failed
pip_install() {
	cat $1 | sed -e '/^\s*#.*$/d' -e '/^\s*$/d' | xargs -n 1 pip install
}

# GIT
alias gl='git log'
alias gb='git branch'
alias gs='git status'
alias ga='git add'
alias gau='git add -u'
alias gr='git reset' # removes added files
alias gc='git commit -m '
alias gp='git push'
# git rm --cached file1.txt    - remove file from git only 

# DVC
# dvc add, git add/commit/push, dvc push




 



# FONT DOCUMENTATION
# Explanation:

# echo -e - The -e option means that escaped (backslashed) strings will be interpreted
# \033 - escaped sequence represents beginning/ending of the style
# lowercase m - indicates the end of the sequence
# 1 - Bold attribute (see below for more)
# [0m - resets all attributes, colors, formatting, etc.
# The possible integers are:

# 0 - Normal Style
# 1 - Bold
# 2 - Dim
# 3 - Italic
# 4 - Underlined
# 5 - Blinking
# 7 - Reverse
# 8 - Invisible
export PATH="/usr/local/opt/node@12/bin:$PATH"
