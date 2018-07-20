#
# Corin Rose
# ~/.bashrc
#

### -- COLORS -- ###

RED="$(tput setaf 9)"
GREEN="$(tput setaf 119)"
BLUE="$(tput setaf 6)"
DGREEN="$(tput setaf 34)" 
PURP="$(tput setaf 55)"
LBLUE="$(tput setaf 14)"
RESET="$(tput sgr0)"

### -- PROMPT -- ###

exitstatus()
{
    if [ $? -eq 0 ]; then
        echo "${GREEN}"
    else
        echo "${RED}"
    fi
}

git_branch () { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'; }

git_color ()
{
    local git_status="$(git status 2> /dev/null)"
    if [[ $git_status  =~ "nothing to commit" ]]; then
        echo "${GREEN}"
    else
        echo "${RED}"
    fi
}

EXITSTATUS='$(exitstatus):'
WD='${BLUE}\W '
BRANCH='$(git_color)$(git_branch)'
PROMPT='${BLUE}> ${RESET}'
export PS1=$EXITSTATUS$WD$BRANCH$PROMPT

### -- ALIAS -- ###
alias ls="ls --color=always"
alias l="ls --color=always -la"

### -- PATH -- ###
export $PATH=$PATH:~/.local/bin/
