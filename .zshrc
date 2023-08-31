
# ~/.zshrc

# To config spacehship in prompt without OhMyZsh.
# Must `brew install spacehsip` first. 
# Resolved via: https://github.com/spaceship-prompt/spaceship-prompt/issues/90
autoload -U promptinit; promptinit
source "$HOME/.zsh/spaceship/spaceship.zsh"
#prompt spaceship
# ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ADD_NEWLINE=true
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_GIT_ASYNC=false

SPACESHIP_PROMPT_ORDER=(
  # time        # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  # hg          # Mercurial section (hg_branch  + hg_status)
  # package     # Package version
  #gradle        # Gradle section
  #maven         # Maven section
  node          # Node.js section
  ruby          # Ruby section
  # elixir      # Elixir section
  # xcode       # Xcode section
  # swift       # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  # julia       # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
  gcloud        # Google Cloud Platform section
  venv          # virtualenv section
  # conda       # conda virtualenv section
  # pyenv       # Pyenv section
  # dotnet      # .NET section
  # ember       # Ember.js section
  kubectl       # Kubectl context section
  terraform     # Terraform workspace section
  # ibmcloud    # IBM Cloud section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  # vi_mode     # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

# Enable colorized output for `ls` command.
alias ls='ls -G'

# Zsh tab completion 
autoload -U compinit
compinit
zstyle ':completion:*' menu select

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PATH="$(pyenv root)/shims:$PATH"
export PATH="$(pyenv root)/bin:$PATH"

eval "$(direnv hook zsh)"

# Since OhMyZsh is gone, using these to replace history functionality.
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

## ## ## ## ## ## ## ## ##
## Flutter
## ## ## ## ## ## ## ## ##
# export PATH=$PATH:"/Users/benmonnier/fvm/versions/3.7.12/bin"
#export PATH="`pwd`/flutter/bin:$PATH"
export PATH="$PATH:/Users/benmonnier/flutter/flutter/bin"


## ## ## ## ## ## ## ## ##
## Java
## ## ## ## ## ## ## ## ##
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-8.jdk/Contents/Home/
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-16.jdk/Contents/Home
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home/
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.14.jdk/Contents/Home/
export PATH=$JAVA_HOME/bin:$PATH

# Remove the prompt changing '(python-venv)' added to beg. of prompt. 
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# Added by Amplify CLI binary installer
export PATH="$HOME/.amplify/bin:$PATH"
#source /usr/local/opt/spaceship/spaceship.zsh
