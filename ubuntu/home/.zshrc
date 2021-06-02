# antigen
ANTIGEN_PATH=${HOME}/antigen.zsh
if ! [ -f $ANTIGEN_PATH ]; then
    curl -L git.io/antigen > $ANTIGEN_PATH
fi
source $ANTIGEN_PATH

antigen use oh-my-zsh
antigen theme robbyrussell
antigen bundle git
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle vi-mode

antigen apply

# bashrc
source ${HOME}/.bashrc