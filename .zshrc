# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
	source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"
# ZSH_THEME="avit"
# ZSH_THEME="agnoster"
#ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="sobole-zsh-theme/sobole"

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
# ENABLE_CORRECTION="true"

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

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	#alias-tips
	#autojump
  #enhancd
	#asdf
	#battery
	#bgnotify
	#colorize
  #command-not-found
	#dirhistory
	#extract
	#fancy-ctrl-z
	#fast-syntax-highlighting
  #k
	#git
	#git-flow-completion
	#laravel
	#last-working-dir
	#magic-enter
  #npm
	#sublime
  #sudo
	#vscode
	zsh-interactive-cd
  zsh-completions
	zsh_reload
	zsh-syntax-highlighting
	zsh-autosuggestions
	zsh-navigation-tools
  zsh-autosuggestions
)

RPROMPT='$(battery_pct_prompt)'

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vim'
else
	export EDITOR='nvim'
fi

alias e=$EDITOR

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="e ~/.zshrc"
alias vimconfig="e ~/.vimrc"
alias tmuxconfig="e ~/.tmux.conf.local"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Aliases
alias la="ls -AXb --group-directories-first --sort=extension"
alias lsda="lsd -A --group-dirs first --classify"
alias exag="exa -ahlT -L=1  -s=extension --git --group-directories-first"
alias mv="mv -iv"
alias cp="cp -iv"
alias rm="rm -iv"
alias ln="ln -sv"
alias q="exit"
alias fdir='find . -type d -name'
alias ffil='find . -type f -name'
#alias cat="bat"

alias tmux="tmux -u"
alias tmuxm="tmux new-session \; split-window -h \; split-window -v \; attach"

alias df="grc df"
alias gcc="grc gcc"
alias iwconfig="grc iwconfig"
alias last="grc last"
alias mount="grc mount"
alias make="grc make"
alias mtr="grc mtr"
alias ping="grc ping"
alias ps="grc ps"
alias traceroute="grc traceroute"
alias wdiff="grc wdiff"
alias pp="prettyping --nolegend"
alias diff="diff --color=auto"
alias grep="grep --color=auto"
alias ncdu="ncdu --color=dark"
alias ytdl="youtube-dl"

alias paci="sudo pacman -S"
alias pacr="sudo pacman -R"
alias pacu="sudo pacman -Syu"
alias pacs="pacman -Ss"
alias pacq="pacman -Qi"
alias pacai="pacaur -S"
alias pacas="pacaur -Ss"
alias trii="trizen -S --noedit"
alias tris="trizen -Ss --noedit"
alias triu="trizen -Syu --noedit"

alias syse="sudo systemctl enable"
alias sysd="sudo systemctl disable"
alias systa="sudo systemctl start"
alias systo="sudo systemctl stop"
alias sysr="sudo systemctl restart"
alias syss="systemctl status"

alias jupn="jupyter notebook"

export PATH="$PATH:$HOME/flutter/bin"
export PATH="$PATH:$HOME/android-studio/bin"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
export NODEJS_HOME="/usr/local/lib/nodejs"
export PATH="$NODEJS_HOME/bin:$PATH"
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="$PATH:$HOME/.local/lib/flutter/bin"
export PATH="$PATH:$HOME/.config/composer/vendor/bin"
export PATH="$PATH:/opt/libwebp/bin"


#Commands
#rt PATH="$PATH:[PATH_TO_FLUTTER_GIT_DIRECTORY]/flutter/bin"
export GREP_COLOR="1;32"
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="Alias: "

#Functions
function lc () {
	cd $1 &&
	la $2
}

mkcd ()
{
	mkdir -p -- "$1" &&
	cd -P -- "$1"
}

function tmux-clean() {
	tmux list-sessions | grep -E -v '\(attached\)$' | while IFS='\n' read line; do
		tmux kill-session -t "${line%%:*}"
	done
}

function man() {
	env \
	LESS_TERMCAP_mb=$(printf "\e[1;31m") \
	LESS_TERMCAP_md=$(printf "\e[1;36m") \
	LESS_TERMCAP_me=$(printf "\e[0m") \
	LESS_TERMCAP_se=$(printf "\e[0m") \
	LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
	LESS_TERMCAP_ue=$(printf "\e[0m") \
	LESS_TERMCAP_us=$(printf "\e[1;32m") \
	PAGER="${commands[less]:-$PAGER}" \
	_NROFF_U=1 \
	PATH="$HOME/bin:$PATH" \
	man "$@"
}

export TERM=xterm-256color

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

terminfo_down_sc=$terminfo[cud1]$terminfo[cuu1]$terminfo[sc]$terminfo[cud1]
PS1_2='[some status]'
PS1="%{$terminfo_down_sc$PS1_2$terminfo[rc]%}%~ %# "
preexec () { print -rn -- $terminfo[el];  }

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source ~/gitstatus/gitstatus.prompt.zsh

if [ "$TMUX" = ""  ]; then tmux; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
