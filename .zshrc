############## ALIASES AND FUNCTIONS ##########################
alias zshconfig="open ~/.zshrc"
alias ohmyzsh="open ~/.oh-my-zsh"

# GIT
alias switch="git checkout -"
alias stash="git stash"
alias pop="git stash pop"
alias gitpurge="prune-branches"

# Works by pruning your tracking branches then deleting the local ones that show they are "gone" in git branch -vv
# also keep main branch and dev
alias prune-branches="git fetch -p ; git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | grep -v "main" | grep -v "dev" | awk '{print $1}' | xargs git branch -d -f"

# pnpm multiverse
alias enter="nvm use && pnpm run all"
alias start="nvm use && pnpm run start"
alias startweb="nvm use && web && pnpm run start"
alias startapi="nvm use && api && pnpm run start"
alias test="pnpm run test"
alias lint="pnpm run lint"
alias test-web="enter && cd ~/code/multiverse/js-packages/web && test && cd ~/code/multiverse && nvm use"
alias test-api="enter && cd ~/code/multiverse/js-packages/api && test"
alias main="cd ~/code/multiverse && nvm use && pnpm run all"
alias db-local='psql postgresql://postgres:postgres@localhost:5432/api_development'

# assumes you are in the right root dir
alias web="cd ~/code/multiverse/js-packages/web && nvm use"
alias api="cd ~/code/multiverse/js-packages/api && nvm use"
alias storybook="web && pnpm run storybook && cd ~/code/multiverse e "
alias snaps="web && pnpm run update-snapshots && main"
alias seed="api && pnpm run seed && main"
alias reset-db="api && pnpm run reset-db-test && main"
alias reset-db-test="api && pnpm run reset-db-dev && pnpm run seed && pnpm run add-setsail-user user@setsail.co && main"
alias update="cd ~/code/multiverse && git pull --autostash origin main:main && pnpm run all && nvm use"
alias reset="clean-elastic && reset-db && reset-db-test"
alias reset-docker="docker-compose down -v --rmi 'all' && docker-compose up && api && pnpm run create-db-test"
alias clean-elastic="curl -X DELETE 'http://localhost:9200/_all'"

## aws and node aliases
alias awsnode="awscheck && echo 'Run [cd js-packages/api && node] to start the interactive node' && deploy/interactive-node-session.sh"
alias awscheck="main && deploy/aws-login.py && echo 'TEST LOGIN' && aws s3 ls && deploy/aws-assume-role.py dev && aws s3 ls --profile dev"
alias awscred="code ~/.aws/credentials"
######################################################################################

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
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/viola/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# https://medium.com/@caulfieldOwen/youre-missing-out-on-a-better-mac-terminal-experience-d73647abf6d7
ZSH_THEME="spaceship"
SPACESHIP_PROMPT_ADD_NEWLINE="true"
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

SPACESHIP_NODE_SYMBOL=" "

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

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
source $(dirname $(gem which colorls))/tab_complete.sh
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="/usr/local/opt/go@1.17/bin:$PATH"
