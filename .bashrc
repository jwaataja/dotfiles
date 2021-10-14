# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


# Put your fun stuff here.

# Argument is a directory suffix like "fork-mernst-branch-scene-to-stub-writer-debug-3"
usecf () { (cd $t; \
  rm -f annotation-tools; if [ -d "annotation-tools-$1" ] ; then ln -sf "annotation-tools-$1" annotation-tools; else ln -sf annotation-tools-branch-master annotation-tools; fi; \
  rm -f checker-framework; if [ -d "checker-framework-$1" ] ; then ln -sf "checker-framework-$1" checker-framework; else ln -sf checker-framework-branch-master checker-framework; fi; \
  cd $t/libraries; rm -f jdk; if [ -d "jdk-$1" ] ; then ln -sf "jdk-$1" jdk; else ln -sf jdk-branch-master jdk; fi; \
  cd $t/libraries; rm -f jdk11u; if [ -d "jdk11u-$1" ] ; then ln -sf "jdk11u-$1" jdk; else ln -sf jdk11u-branch-master jdk11u; fi; \
) }

# Creates a new branch of the current repository, in a sibling directory.
# Argument is the branch name.
# remote
gitnewbranchCP () { cd $(git rev-parse --show-toplevel) && git pull && (! git ls-remote --exit-code origin $1 || (echo "Branch $1 already exists" && false)) && REPO=$(basename "$(pwd)") && BRANCHDIR="../${REPO%%-branch-*}-branch-$1" && \cp -Rp . ${BRANCHDIR} && cd ${BRANCHDIR} && git checkout -b $1 -q ; }
gitnewbranchWORKTREE () { cd $(git rev-parse --show-toplevel) && git pull && (! git ls-remote --exit-code origin $1 || (echo "Branch $1 already exists" && false)) && REPO=$(basename "$(pwd)") && BRANCHDIR="../${REPO%%-branch-*}-branch-$1" && git worktree add -b "$1" "${BRANCHDIR}" && cd "${BRANCHDIR}" ; }
alias gnbc=gitnewbranchCP
alias gnbw=gitnewbranchWORKTREE

# Checks out an existing branch of the current repository, in a sibling
# directory. Argument is the name of the branch.
gitcheckoutbranchCP () {
    REMOTE=origin && \
        if [ -n "$2" ]; then
            REMOTE="$2"
        fi && \
            cd $(git rev-parse --show-toplevel) && \
            git diff --exit-code && \
            git pull && \
            (git ls-remote --exit-code "$REMOTE" "$1" || (echo "Branch $1 does not exist" && false)) && \
            REPO=$(basename "$(pwd)") && \
            BRANCHDIR="${REPO%%-branch-*}-branch-$1" && \
            BRANCHDIR="../${BRANCHDIR//\//-}" && \
            \cp -Rp . ${BRANCHDIR} && \
            cd ${BRANCHDIR} && \
            git checkout "$1" && \
            git pull
}
gitcheckoutbranchWORKTREE () {
    REMOTE=origin
    if [ -n "$2" ]; then
        REMOTE="$2"
    fi
    cd "$(git rev-parse --show-toplevel)" && \
        git diff --exit-code && \
        git pull && \
        (git ls-remote --exit-code "$REMOTE" "$1" || (echo "Branch $1 does not exist" && false)) && \
        REPO=$(basename "$(pwd)") && \
        BRANCHDIR="../${REPO%%-branch-*}-branch-$1" && \
        git worktree add "${BRANCHDIR}" "$1" && \
        cd "${BRANCHDIR}"
}
alias gcbc=gitcheckoutbranchCP
alias gcbw=gitcheckoutbranchWORKTREE

# Git aliases from oh-my-zsh
# https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git/git.plugin.zsh
alias g='git'

alias ga='git add'
alias gaa='git add --all'
alias gapa='git add --patch'
alias gau='git add --update'
alias gav='git add --verbose'
alias gap='git apply'
alias gapt='git apply --3way'

alias gb='git branch'
alias gba='git branch -a'
alias gbd='git branch -d'
alias gbda='git branch --no-color --merged | command grep -vE "^([+*]|\s*($(git_main_branch)|$(git_develop_branch))\s*$)" | command xargs git branch -d 2>/dev/null'
alias gbD='git branch -D'
alias gbl='git blame -b -w'
alias gbnm='git branch --no-merged'
alias gbr='git branch --remote'
alias gbs='git bisect'
alias gbsb='git bisect bad'
alias gbsg='git bisect good'
alias gbsr='git bisect reset'
alias gbss='git bisect start'

alias gc='git commit -v'
alias gc!='git commit -v --amend'
alias gcn!='git commit -v --no-edit --amend'
alias gca='git commit -v -a'
alias gca!='git commit -v -a --amend'
alias gcan!='git commit -v -a --no-edit --amend'
alias gcans!='git commit -v -a -s --no-edit --amend'
alias gcam='git commit -a -m'
alias gcsm='git commit -s -m'
alias gcas='git commit -a -s'
alias gcasm='git commit -a -s -m'
alias gcb='git checkout -b'
alias gst='git status'
alias gl='git pull'
alias gp='git push'

# Other aliases.
alias rfl='rifle'
alias rng='ranger'
alias rgi='rg -i'
alias pag='ps aux | grep -i'

[ -f "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env" ] && source "${GHCUP_INSTALL_BASE_PREFIX:=$HOME}/.ghcup/env"

# opam configuration
# test -r /home/jason/.opam/opam-init/init.zsh && . /home/jason/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true


# # Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
# export PATH="$PATH:$HOME/.rvm/bin"
# 
# export PATH=$HOME/.rbenv/bin:$PATH
# export PATH=$HOME/.rbenv/shims:$PATH
# eval "$(rbenv init -)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jason/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jason/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jason/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jason/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
