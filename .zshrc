HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.history
GOPATH="$HOME/go/bin:$GOPATH"

zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
path+=($HOME/bin /usr/local/sbin $GOPATH/bin)
fpath+=($HOME/.zsh)
autoload -Uz compinit && compinit
zmodload -i zsh/complist

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
