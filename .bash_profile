alias ll="ls -al"

export PATH="$HOME/.cabal/bin:$HOME/.nodebrew/current/bin:$PATH"
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
fi

export PATH="~/bin:$PATH"

GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '


