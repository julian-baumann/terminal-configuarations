source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PS1="%F{cyan}%1d%F{blue} #%f "

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
#    [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
else
    alias ls="ls --color";
    alias l="ls -Fa --color";
    alias lsa="ls -la --color";
fi

