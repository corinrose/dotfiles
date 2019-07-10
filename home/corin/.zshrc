### PATH ###
export PATH=$HOME/.local/bin:$HOME/.local/scripts:/usr/local/bin:$PATH

### OH-MY-ZSH ###
export ZSH="/home/corin/.oh-my-zsh"

### THEME ###
ZSH_THEME="corin"

### PLUGINS ###
plugins=(
    git
    sudo
    history-substring-search    
)

###  ###
source $ZSH/oh-my-zsh.sh
