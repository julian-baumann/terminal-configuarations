source ~/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PS1="%F{cyan}%1d%F{blue} >%f "

setopt histignoredups

if [[ `uname` == "Darwin" ]]; then
    alias ls="ls -G";
    alias l="ls -Fa -G";
    alias lsa="ls -la -G";
    alias firefox="/Applications/Firefox.app/Contents/MacOS/firefox"   
    alias install-eslint="npm install -D eslint @typescript-eslint/eslint-plugin @typescript-eslint/eslint-plugin-tslint @typescript-eslint/parser eslint-plugin-import eslint-plugin-prefer-arrow eslint-plugin-simple-import-sort"

    export PATH=$PATH:~/Bin
    export PATH="/opt/homebrew/bin:$PATH"
    export PATH="/Users/turingmachine/Projects/qemu/build:$PATH"
    export PATH="$PATH:/Users/turingmachine/.dotnet/tools"

    export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
    export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
    export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
    export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
    export PATH=$PATH:/Users/turingmachine/Library/Python/2.7/bin
    
#    export DOCKER_TLS_VERIFY="1"
#    export DOCKER_HOST="tcp://127.0.0.1:50126"
#    export DOCKER_CERT_PATH="/Users/turingmachine/.minikube/certs"
#    export MINIKUBE_ACTIVE_DOCKERD="minikube"
else
    alias ls="ls --color";
    alias l="ls -Fa --color";
    alias lsa="ls -la --color";
    alias open="xdg-open";
    export PATH=/home/julianbaumann/Bins:$PATH
    bindkey "^[[1;3C" forward-word
    bindkey "^[[1;3D" backward-word
fi
