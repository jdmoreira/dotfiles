eval "$(/opt/homebrew/bin/brew shellenv)"

alias ls='gls --color=auto'

dcolors=.dircolors
test -r $d && eval "$(gdircolors $dcolors)"

export CLICOLOR=1
export TERM=xterm-256color

export LANG=en_US.UTF-8

export PS1="\[\033[01;34m\]\w\[\033[00m\]\$ "
export EDITOR="vim"
export SVN_EDITOR="vim"

export PATH="usr/local/sbin:$PATH"

if [ -d "$HOME/.bashscripts" ]; then
  for script in "$HOME/.bashscripts"/*.bash; do
    [ -f "$script" ] && source "$script"
  done
fi
