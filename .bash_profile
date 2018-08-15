source $HOME/.bash_aliases
source $HOME/.bash_prompt
source $HOME/.bash_exports
echo 'Setting PATH'
PATH="/usr/local/sbin:$PATH"
PATH="/usr/local/opt/gdal2/bin:$PATH"
PATH="~/.pyenv/shims/:$PATH"
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
#export PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
