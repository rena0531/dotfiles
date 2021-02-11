# zplug
# zplug がなければインストール後 zsh を再起動
if [ ! -e "${HOME}/.zplug/init.zsh" ]; then
    curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh
fi
source ${HOME}/.zplug/init.zsh

# YARN
if (( $+commands[yarn] ))
then
  export PATH="`yarn global bin`:$PATH"
fi

# Local
export PATH="$HOME/.local/bin:$PATH"

# Go
export GOPATH="$HOME/.go"
export PATH="$GOPATH/bin:$PATH" 

# Install dracula ZSH using Git
# $ git clone https://github.com/dracula/zsh.git
# https://draculatheme.com/zsh/
ZSH_THEME="dracula"

eval "$(anyenv init -)"
eval "$(starship init zsh)"

export NVM_DIR = " $ HOME /.nvm " 
[ -s  " $ NVM_DIR /nvm.sh " ] &&  \。 " $ NVM_DIR /nvm.sh "export PATH="$HOME/.anyenv/bin:$PATH"
export PATH="$HOME/.anyenv/bin:$PATH"

#nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH
