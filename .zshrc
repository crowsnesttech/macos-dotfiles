# If you come from git/scripts you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/$USER/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnostercstm"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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

AUTO_MENU="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

ZSH_DISABLE_COMPFIX="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git
  copypath
  dirhistory
  yarn
  web-search
  jsontools
  macports
  node
  macos
  sudo
  thor
  docker
  iterm2
  zsh-autosuggestions
  zsh-syntax-highlighting
  docker
  docker-compose)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

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
# Aliases
#
alias ohmyzsh="vim ~/.oh-my-zsh"
alias zshc="vim ~/.zshrc"
alias zshr="exec zsh"
# SSH Aliases:
alias hp1="ssh root@172.16.16.2"
alias hp2="ssh root@172.16.16.3"
alias hp3="ssh root@172.16.16.4"
alias pbs="ssh root@172.16.16.5"
alias cmd="ssh $USER@ubs-cmdctl"
alias syno="ssh $USER@cnt-synology -p 3390"
alias ubs="ssh $USER@ubs1804-syno"
alias xpe="ssh $USER@cnt-backup"
alias esxi1="ssh root@192.168.11.15"
alias esxi2="ssh root@192.168.11.16"
alias esxi3="ssh root@192.168.11.17"
alias ubsd="ssh $USER@192.168.11.2"
alias vcsa="ssh -o PubkeyAuthentication=no root@192.168.11.18"
# Bash Shortcuts
alias c="clear"
alias dns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder; say cache flushed"
alias ll="ls -alF"
alias ld="cd ~/git/dotfiles/macos-dotfiles"
alias smb="sudo -S killall NetAuthSysAgent"
alias snap="tmutil localsnapshot"
alias scpt="cd ~/git/scripts"
alias ans="cd ~/git/ansible"
# Scripts
alias dellfan="sh ~/git/scripts/servers/dellfan3.sh"
alias dellon="sh ~/git/scripts/servers/dellon.sh"
alias delloff="sh ~/git/scripts/servers/delloff.sh"
alias hp="sh ~/git/scripts/servers/hpon.sh"
alias wp="sh ~/git/scripts/wallpaperfix.sh"


source ~/.iterm2_shell_integration.zsh

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

function lgt() {
    git add .
    git commit -a -m $*
    git push
}
