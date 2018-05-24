export HISTFILE=$HOME/.cache/.zsh_history

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

autoload -Uz colors && colors

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

if [[ $(tty) =~ ^/dev/tty[0-9]+$ ]] || \
   [[ $LD_LIBRARY_PATH =~ idea ]]
then
  ZSH_THEME="gentoo"
else
  ZSH_THEME="agnoster-light"
fi



# completion dump should go into ~/.cache/
if [[ "$OSTYPE" = darwin* ]]; then
  # macOS's $HOST changes with dhcp, etc. Use ComputerName if possible.
  SHORT_HOST=$(scutil --get ComputerName 2>/dev/null) || SHORT_HOST=${HOST/.*/}
else
  SHORT_HOST=${HOST/.*/}
fi

ZSH_COMPDUMP="${HOME}/.cache/.zcompdump-${SHORT_HOST}-${ZSH_VERSION}"




# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git archlinux themes colorize zsh-nvm)

RCFILE=$0
if [[ "zsh" == "$RCFILE" ]]; then
  RCFILE="$(readlink -f "$HOME/.zshrc")"
fi
RCDIR="$(cd "$(dirname "$RCFILE")" && pwd)"

function load_ohmyzsh () {
  . $ZSH/oh-my-zsh.sh

  # User configuration

  unsetopt AUTO_CD

  # Compilation flags
  # export ARCHFLAGS="-arch x86_64"

  # ssh
  # export SSH_KEY_PATH="~/.ssh/dsa_id"
  # export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

  # Set personal aliases, overriding those provided by oh-my-zsh libs,
  # plugins, and themes. Aliases can be placed here, though oh-my-zsh
  # users are encouraged to define aliases within the ZSH_CUSTOM folder.
  # For a full list of active aliases, run `alias`.
  #
  # Example aliases
  # alias zshconfig="mate ~/.zshrc"
  # alias ohmyzsh="mate ~/.oh-my-zsh"

  . "$RCDIR/shell/aliases.sh"
}

function built_in_theme_names {
  ls $ZSH/themes | grep -Poi ".*(?=\.)" | sort | uniq
}

function custom_theme_names {
  ls $ZSH/custom/themes | grep -Poi ".*(?=\.)" | sort | uniq
}

function theme_names {
  built_in_theme_names | (custom_theme_names && cat) | sort | uniq
}

function theme_names_looped {
  (theme_names | head -n 1) | (theme_names && cat) | ( (theme_names | tail -n 1) && cat)
}

function after_current_theme {
  grep -i -m 1 -A 1 "^$ZSH_THEME$" | tail -n 1
}

function prev_theme_name {
  theme_names_looped | tac | after_current_theme
}

function next_theme_name {
  theme_names_looped | after_current_theme
}

function use_theme {
  ZSH_THEME="$1"
  load_ohmyzsh
  echo "Switched to theme: $ZSH_THEME"
}

function use_prev_theme {
  use_theme "$(prev_theme_name)"
}

function use_next_theme {
  use_theme "$(next_theme_name)"
}

load_ohmyzsh
