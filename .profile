export EDITOR=nvim
# export TERMINAL=urxvtc
export TERMINAL=alacritty
export TERM=xterm-256color

# Specific to zsh.
# typeset -U path

# Personal scripts, may also help i3
export PATH=$HOME/bin:$PATH

export PATH=$HOME/.local/bin:$PATH

# Various programming languages and more.
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
# For racer, Rust completion
export RUST_SRC_PATH="$(rustc --print sysroot)/lib/rustlib/src/rust/src"
export PATH=$HOME/.gem/ruby/2.7.0/bin:$PATH
# Roswell, Common Lisp
export PATH=$HOME/.roswell/bin:$PATH
# For SML
export PATH=$HOME/.local/share/smlnj/bin:$PATH
# For eclipse
export PATH=$HOME/eclipse/java-neon/eclipse:$PATH

# Checker framework for compiling Java.
# export CHECKERFRAMEWORK=${HOME}/Sync/School/Research/checker-framework-2.5.2
# export PATH=${CHECKERFRAMEWORK}/checker/bin:${PATH}
export CHECKERFRAMEWORK=$HOME/jsr308/checker-framework

# Use downloaded ant distribution instead of the system one.
export ANT_HOME=$HOME/java/apache-ant-1.8.2


export PATH=$CHECKERFRAMEWORK/checker/bin-devel:$HOME/git/jsr308-langtools/dist/bin:$PATH
# Annotation tools
export PATH=$PATH:$HOME/jsr308/annotation-tools/annotation-file-utilities/scripts
# npm
export NPM_PACKAGES=$HOME/.npm-packages
export PATH=$NPM_PACKAGES/bin:$PATH

# node packages
export PATH=$HOME/node_modules/.bin:$PATH

# Use native libraries
export STEAM_RUNTIME=1
export STEAM_PREFER_HOST_LIBRARIES=1

# For configurting the appearance of QT apps
export QT_QPA_PLATFORMTHEME="qt5ct"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
