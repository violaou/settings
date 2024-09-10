###### autocomplete
#source ~/code/zsh-autocomplete/zsh-autocomplete.plugin.zsh

############## ALIASES AND FUNCTIONS ##########################
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias refresh="echo 'ZSH Config Reloaded!' && exec zsh"
alias log="docker logs -f"

# GIT
alias switch="git checkout -"
alias stash="git stash"
alias pop="git stash pop"
alias gitpurge="prune-branches"
alias cancel-merge="git merge --abort"
alias abort="git merge --abort"
alias rename="git branch -m"

# Works by pruning your tracking branches then deleting the local ones that show they are "gone" in git branch -vv
# also keep main branch and dev
alias prune-local="git branch --merged | egrep -v '(^\*|main|dev|viola)' | xargs git branch -d"

# changed the enterance to be name %dir (overwritten if you end up using spaceport)
PS1="%n %1~ %# "
######################################################################################
##############  CUSTOM ##########################
export GIT_MERGE_AUTOEDIT=no

function cs() {
    DIR="$*";
        # if no DIR given, go home
        if [ $# -lt 1 ]; then
                DIR=$HOME;
    fi;    builtin cd "${DIR}" && \
    # use your preferred ls command
        colorls -a
}

# nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH
#export PATH=/bin:/usr/bin:/usr/local/bin:/sbin:${PATH}

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
ZSH_THEME="spaceship"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# https://medium.com/@caulfieldOwen/youre-missing-out-on-a-better-mac-terminal-experience-d73647abf6d7
SPACESHIP_CHAR_SUFFIX=(" ")
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true"
SPACESHIP_PROMPT_PREFIXES_SHOW="false"
SPACESHIP_CHAR_SYMBOL=" \uf0e7"
SPACESHIP_CHAR_PREFIX=" \uf296"
SPACESHIP_CHAR_SUFFIX=(" ")
SPACESHIP_CHAR_COLOR_SUCCESS="yellow"
SPACESHIP_PROMPT_DEFAULT_PREFIX="$USER"
SPACESHIP_PROMPT_FIRST_PREFIX_SHOW="true"
SPACESHIP_USER_SHOW="true"

SPACESHIP_GIT_BRANCH_SUFFIX=" "
SPACESHIP_GIT_SYMBOL="שׂ "

SPACESHIP_PACKAGE_PREFIX=" ["
SPACESHIP_PACKAGE_SUFFIX="] "
SPACESHIP_PACKAGE_SYMBOL=""

spaceship remove docker # removes docker
# VIOLA PLEEASE RUN THE FOLLOWING INSIDE THE SPACESHIP TERMINAL PRIMPT:
# spaceship remove golang


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git F-Sy-H git z you-should-use)


# User configuration
# ==============================================================
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#https://medium.com/@caulfieldOwen/youre-missing-out-on-a-better-mac-terminal-experience-d73647abf6d7
alias ls='colorls -a'
alias lc='colorls -lA --sd'
source ~/.nvm/nvm.sh #nvm
source $(dirname $(gem which colorls))/tab_complete.sh


## MAKE SURE YOU KNOW WHERE THESE ARE INSTALLED
## THESE CAN BE REMOVED
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/opt/go@1.17/bin:$PATH"
export PATH="$(brew --prefix)/opt/python@3.10/libexec/bin:$PATH"
export PYTHONPATH="$(brew --prefix)/opt/python@3.10/libexec/bin:$PATH"


