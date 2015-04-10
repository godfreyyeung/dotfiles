#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/usr/bin/vendor_perl:/usr/bin/core_perl:/usr/share/cross/bin:/usr/share/sublime_text_3:/usr/share/msp430/bin/

export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
export TERM=xterm-256color

alias ..='cd ..'
alias suod='sudo'

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk/jre/
export DEVKITPRO=/home/gerik/devkitPro
export DEVKITPPC=/home/gerik/devkitPro/devkitPPC


stty -ixon
