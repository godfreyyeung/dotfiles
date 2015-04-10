# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' completions 1
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' file-sort name
zstyle ':completion:*' glob 1
zstyle ':completion:*' group-name ''
zstyle ':completion:*' ignore-parents parent
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' list-suffixes true
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-2]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' max-errors 3
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*' substitute 1
zstyle ':completion:*' use-compctl false
zstyle :compinstall filename '/home/gerik/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=5000
SAVEHIST=5000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install


setopt HIST_IGNORE_DUPS
autoload -U colors && colors
autoload -U promptinit
promptinit

PROMPT="%{$fg[cyan]%}%}[%{$fg[yellow]%}%w_%t %{$fg[green]%}%n%{$fg[red]%}<%?>%{$fg[white]%}:%{$fg[magenta]%}%~%{$fg[cyan]%}]%f "

DIRSTACKFILE="$HOME/.cache/zsh/dirs"
if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then
   dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
   [[ -d $dirstack[1] ]] && cd $dirstack[1]
fi
chpwd() {
   print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
}

eval "$(dircolors /home/gerik/.dircolors)";

DIRSTACKSIZE=40

setopt autopushd pushdsilent pushdtohome

setopt pushdignoredups
setopt pushdminus

alias d='dirs -v'
alias ls='ls --color'
alias ll='ls -la --color'
alias kdkd='sudo !:0'

indigo() {
   source /opt/ros/indigo/setup.zsh
   export PYTHONPATH=/opt/ros/indigo/lib/python2.7/site-packages:$PYTHONPATH
   export PKG_CONFIG_PATH="/opt/ros/indigo/lib/pkgconfig:$PKG_CONFIG_PATH"
   
   alias catkin_make="catkin_make -DPYTHON_EXECUTABLE=/usr/bin/python2 -DPYTHON_INCLUDE_DIR=/usr/include/python2.7 -DPYTHON_LIBRARY=/usr/lib/libpython2.7.so"
}
