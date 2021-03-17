source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PS1="%F{cyan}%1d%F{blue} >%f "

setopt histignoredups

if [[ `uname` == "Darwin" ]]; then
    alias ls="ls -G";
    alias l="ls -Fa -G";
    alias lsa="ls -la -G";
    alias vlc="/Applications/VLC.app/Contents/MacOS/VLC"
    alias pmts-server="/Applications/PMTS-Server.app/Contents/MacOS/PMTS-Server"
    alias code="code-insiders"
    alias firefox="/Applications/Firefox.app/Contents/MacOS/firefox"   

    export PATH="/opt/homebrew/bin:$PATH"
#    export NVM_DIR="$HOME/.nvm"
#    [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
#    alias python3.9="/opt/homebrew/Caskroom/miniforge/base/bin/python"
#    alias pip3.9="/opt/homebrew/Caskroom/miniforge/base/bin/pip"
#    export NODE_PATH=$NODE_PATH:`npm root -g`
#    [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
else
    alias ls="ls --color";
    alias l="ls -Fa --color";
    alias lsa="ls -la --color";
fi



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

