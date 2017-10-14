alias ls='gls --color=auto'

dcolors=.dircolors
test -r $d && eval "$(gdircolors $dcolors)"

export CLICOLOR=1
export TERM=xterm-256color

export LC_ALL=pt_PT.UTF-8
export LANG=pt_PT.UTF-8

export PS1="\[\033[01;34m\]\w\[\033[00m\]\$ "
export EDITOR="vim"
export SVN_EDITOR="vim"

export PATH="/usr/local/sbin:$PATH"

# checkout prev (older) revision
git_prev() {
    git checkout HEAD~
}

# checkout next (newer) commit
git_next() {
    BRANCH=`git show-ref | grep $(git show-ref -s -- HEAD) | sed 's|.*/\(.*\)|\1|' | grep -v HEAD | sort | uniq`
    HASH=`git rev-parse $BRANCH`
    PREV=`git rev-list --topo-order HEAD..$HASH | tail -1`
    git checkout $PREV
}

# rbenv
eval "$(rbenv init -)"
