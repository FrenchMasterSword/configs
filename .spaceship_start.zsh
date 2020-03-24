# LEFT PROMPT
SPACESHIP_PROMPT_ORDER=(
#  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
#  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
#  python
#  node          # Node.js section
#  ruby          # Ruby section
#  elixir        # Elixir section
#  xcode         # Xcode section
#  swift         # Swift section
#  golang        # Go section
#  php           # PHP section
#  rust          # Rust section
#  haskell       # Haskell Stack section # slooooow
#  julia         # Julia section
#  docker        # Docker section
#  aws           # Amazon Web Services section
  venv          # virtualenv section
#  conda         # conda virtualenv section
  pyenv         # Pyenv section
#  dotnet        # .NET section
#  ember         # Ember.js section
#  kubecontext   # Kubectl context section
#  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
#  battery       # Battery level and status
#  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

# RIGHT PROMPT
SPACESHIP_RPROMPT_ORDER=(
#  time          # Time stamps section
#   line_sep      # Line break
)

# PYTHON
SPACESHIP_PYTHON_SYMBOL=''

# CHAR
# SPACESHIP_CHAR_SYMBOL="❯ "
SPACESHIP_CHAR_SYMBOL="⮞ "
# TIME
SPACESHIP_TIME_SHOW=true
# SPACESHIP_TIME_COLOR="white"

# EXIT CODE
# SPACESHIP_EXIT_CODE_SHOW=true
# SPACESHIP_EXIT_CODE_SYMBOL=""

# USER
# SPACESHIP_USER_SHOW=always
# SPACESHIP_USER_PREFIX=""
# SPACESHIP_USER_SUFFIX=")) "

# HOST
# SPACESHIP_HOST_PREFIX="@:("
# SPACESHIP_HOST_SUFFIX=") "

# DIR
SPACESHIP_DIR_TRUNC=0 # Show all

# GIT
SPACESHIP_GIT_BRANCH_PREFIX=$'\uf418 '
# Wrap git in `git:(...)`
# SPACESHIP_GIT_PREFIX='git:('
# SPACESHIP_GIT_SUFFIX=") "
# SPACESHIP_GIT_BRANCH_SUFFIX=") "
# SPACESHIP_GIT_STATUS_PREFIX=""
# SPACESHIP_GIT_STATUS_SUFFIX=""

# PACKAGE
# SPACESHIP_PACKAGE_SYMBOL=$'\uf8d2 '

# NODE
SPACESHIP_NODE_DEFAULT_VERSION="v10.10.1"

# VENV
SPACESHIP_VENV_PREFIX="venv:("
SPACESHIP_VENV_SUFFIX=") "

# PYENV
SPACESHIP_PYENV_PREFIX=$'\ue606 '
# SPACESHIP_PYENV_SUFFIX=") "
# SPACESHIP_PYENV_SYMBOL="PYPY"
 SPACESHIP_PYENV_COLOR='green'

prompt spaceship
