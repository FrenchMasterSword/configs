# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -Uz promptinit
promptinit

# prompt spaceship after setting up its config
source ~/.spaceship_start.zsh

zstyle ':completion:*' menu select

# Source all files ending with .zsh in ~/.zscripts
for f (~/.zscripts/**/*.zsh(N.)) . $f

# Bash handy ls aliases
alias ls='ls --color=auto'
alias la='ls -A'
alias l='ls -lh'

# ZSH help command, will default to man if not zsh-related
unalias run-help 2>/dev/null
autoload run-help
HELPDIR=/usr/share/zsh/help
alias help=run-help

# Extension aliases
alias -s py=python html=firefox txt=nvim exe=wine rar='unrar x'

# Redo last command but with sudo
alias fuck='sudo $(history -p !!)'

# Explain the spaceship's git hints
alias spacegit='echo "  ? untracked changes
  + uncommitted changes in the index
  ! unstaged changes
  » renamed files
  ✘ deleted files
  $ stashed changes
  = unmerged changes
  ⇡ ahead of remote branch
  ⇣ behind of remote branch
  ⇕ diverged changes"'

# tb will redirect the output of the command on the left to termbin
alias -g tb='| nc termbin.com 9999'
# Same but with coloration and line numbers
alias -g tbp='| (nc termbin.com 9999 | (read foo; echo ${foo:0:8}l.${foo:8}))'

# nice cat
alias cat='bat --style="header,grid" --'

# HP photosmart scanner
alias scan="hp-scan --device='hpaio:/net/Photosmart_6510_series?ip=192.168.0.16' --size=a4 --dest=pdf --mode=color"
alias combinepdf="pdftk *.pdf cat output"
alias clearscan="rm hpscan0*"

export SHELL=/bin/zsh

# Colored less
export LESSOPEN="| /usr/bin/source-highlight-esc.sh %s"
export LESS='-R '

# flutter and general bin
export PATH="$PATH:/home/frenchms/clones/flutter/bin:/home/frenchms/.local/bin:/home/frenchms/.emacs.d/bin"

# /tp
alias secu="cd /home/frenchms/Work/SECURITE"

# Because nvr
alias nvim="NVIM_LISTEN_ADDRESS=/tmp/nvimsocket nvim"
