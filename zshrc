# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="mefisto"
DISABLE_AUTO_UPDATE="true"

plugins=(git bundler osx mercurial brew rvm python)

source $ZSH/oh-my-zsh.sh

#------------------------------
# Variables
#------------------------------
export EDITOR="vim"
export BROWSER="links"

#------------------------------
# Aliases 
#------------------------------

# TODO: identify non gnu ls in better way...
if [ "$TERM" != "dumb" ] && [ -x /usr/bin/dircolors ]; then
        alias ls='ls --group-directories-first --color=auto'
        alias dir='ls --color=auto --format=vertical'
        alias vdir='ls --color=auto --format=long'
else
        alias grep='grep --color=auto'
        alias ls='ls -GF'
fi

alias ll='ls -l'
alias la='ls -FA'
alias l='ls -CF'
alias h='history'
alias a='ack'

alias hm='hg remove'
alias hgr='hg status -an0 |xargs -0 hg revert'
alias gdm='git diff master'
alias ga='git add .'
alias gm='git commit -m $1'
alias gp='git push'

alias -s gz=tar -xzvf
alias -s bz2=tar -xjvf
alias -s java=$EDITOR
alias -s txt=$EDITOR
alias -s html=$BROWSER
alias -s png=feh
alias -s jpg=feh
alias -s gif=feh

alias vim='/usr/local/Cellar/macvim/7.4-104/MacVim.app/Contents/MacOS/Vim'
export PATH=$HOME/bin:/usr/local/bin:/usr/local/share/python:$HOME/.rvm/bin:$PATH

