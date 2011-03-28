# Created by newuser for 4.3.10

autoload -U compinit promptinit
compinit
promptinit
 
# This will set the default prompt to the walters theme
prompt adam2
RPROMPT=""

#autocompletion with an arrow-key driven interface
zstyle ':completion:*' menu select

#history
export HISTFILE=~/.zsh_history
export HISTSIZE=50000
export SAVEHIST=50000
eval `dircolors -b`

#aliases
# Normal aliases
alias ls='ls --color=auto -F'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias cl='clear'

#pythonpath
PYTHONPATH=$HOME/my-python-code/django-projects/codeshare/
export PYTHONPATH

#custom functions
#my command for melange
function bleh {
    cd /home/slingshot316/my-python-code/melange
    source ./../myenv/bin/activate
    ./thirdparty/google_appengine/dev_appserver.py --datastore_path=/home/slingshot316/my-python-code/dev_appserver.datastore --blobstore_path=/home/slingshot316/my-python-code/dev_appserver.blobstore --allow_skipped_files build
}

function soc {
    cd /home/slingshot316/my-python-code/soc
    source ./../myenv/bin/activate
    ./thirdparty/google_appengine/dev_appserver.py --datastore_path=/home/slingshot316/tmp/dev_appserver.datastore --blobstore_path=/home/slingshot316/tmp/dev_appserver.blobstore --allow_skipped_files build
}

function bleh2 {
    cd /home/slingshot316/my-python-code/mel-updated
    source ./../myenv/bin/activate
    ./thirdparty/google_appengine/dev_appserver.py --datastore_path=/home/slingshot316/tmp/mel-update/dev_appserver.datastore --blobstore_path=/home/slingshot316/tmp/mel-update/dev_appserver.blobstore --allow_skipped_files build
}
