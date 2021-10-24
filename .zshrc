source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PS1="%F{cyan}%1d%F{blue} >%f "

setopt histignoredups

if [[ `uname` == "Darwin" ]]; then
    alias ls="ls -G";
    alias l="ls -Fa -G";
    alias lsa="ls -la -G";
    alias firefox="/Applications/Firefox.app/Contents/MacOS/firefox"   

    export PATH=$PATH:~/Bin
    export PATH="/opt/homebrew/bin:$PATH"
    export PATH="/Users/turingmachine/Projects/qemu/build:$PATH"
    export PATH="$PATH:/Users/turingmachine/.dotnet/tools"

    export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
    export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
    export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
    export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
else
    alias ls="ls --color";
    alias l="ls -Fa --color";
    alias lsa="ls -la --color";
    alias open="xdg-open";
    export PATH=/home/julianbaumann/Bins:$PATH
    bindkey "^[[1;3C" forward-word
    bindkey "^[[1;3D" backward-word
fi
