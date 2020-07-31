source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#export PS1=$'\e[1;96m\%1d \e[1;34m\▶ \e[0m'
export PS1="%F{cyan}%1d%F{blue} #%f "
#export PS1="%F{cyan} #%f "


if [[ `uname` == "Darwin" ]]; then
    alias ls="ls -G";
    alias l="ls -Fa -G";
    alias lsa="ls -la -G";
    alias python3=python3.8;
    alias pip3=pip3.8;
else
    alias ls="ls --color";
    alias l="ls -Fa --color";
    alias lsa="ls -la --color";
fi

