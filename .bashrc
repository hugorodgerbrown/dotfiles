source $HOME/.bash_aliases
source $HOME/.bash_prompt
source $HOME/.bash_exports

echo 'Setting PATH'
PATH="/usr/local/sbin:$PATH"
PATH="/usr/local/opt/gdal2/bin:$PATH"
PATH="$HOME/.pyenv/bin:$PATH"
PATH=${PWD}:$PATH
export PATH

echo 'Initialising NVM'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

echo 'Initialising YVM'
source $HOME/.yvm/yvm.sh

echo 'Initialising pyenv'
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"