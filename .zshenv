export EDITOR=nvim
# export TERMINAL=urxvtc
# export TERMINAL=konsole
export TERM=xterm-256color

typeset -U path
# Personal scripts, may also help i3
export PATH=$HOME/bin:$PATH

# Various programming languages and more.
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
# export PATH=$HOME/.gem/ruby/2.4.0/bin:$PATH

# Checker framework for compiling Java.
export CHECKERFRAMEWORK=$HOME/jsr308/checker-framework
export PATH=$CHECKERFRAMEWORK/checker/bin-devel:$HOME/git/jsr308-langtools/dist/bin:$PATH

# Use native libraries
export STEAM_RUNTIME=1
export STEAM_PREFER_HOST_LIBRARIES=1

# For configurting the appearance of QT apps
export QT_QPA_PLATFORMTHEME="qt5ct"
