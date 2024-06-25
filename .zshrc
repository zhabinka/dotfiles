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

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="avit"
# ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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

plugins=(
  git                     # https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git
  docker                  # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker
  docker-compose          # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/docker-compose
  mix
  # mix-fast                # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/mix-fast
  # zsh-autosuggestions     # https://github.com/zsh-users/zsh-autosuggestions
  web-search
  zsh-syntax-highlighting # https://github.com/zsh-users/zsh-syntax-highlighting
  z                       # https://github.com/agkozak/zsh-z
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#
# TODO: bash установлен как login shell по умолчанию,
# но сообщение про дефолтный zsh всё равно выводится
# https://support.apple.com/en-gb/HT208050
export BASH_SILENCE_DEPRECATION_WARNING=1

# export PS1="\[\e[1;36m\]\w\[\e[m\]\[\033[32m\]\$(__git_ps1)\[\033[00m\] $ "

PROMPT=' %b%F{green}%3~ $(hg_prompt_info)$(git_prompt_info)%B%(!.%F{red}.%F{blue})$%f%b '
RPS1='%(?..%F{red}%? ↵%f)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}‹"
ZSH_THEME_GIT_PROMPT_SUFFIX="› %{$reset_color%}"

ZSH_THEME_HG_PROMPT_PREFIX="%{$fg[magenta]%}hg:‹%{$fg[yellow]%}"
ZSH_THEME_HG_PROMPT_SUFFIX="%{$fg[magenta]%}› %{$reset_color%}"
ZSH_THEME_HG_PROMPT_DIRTY=" %{$fg[red]%}✗" ZSH_THEME_HG_PROMPT_CLEAN=""

[ -f ~/.fzf.bash ] && source ~/.fzf.zsh
[[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && . "$(brew --prefix)/etc/profile.d/bash_completion.sh"
. $(brew --prefix asdf)/libexec/asdf.sh

export PATH=$(brew --prefix openvpn)/sbin:$PATH
export PATH="$HOME/.local/bin:$PATH"
export HOMEBREW_NO_AUTO_UPDATE="1"
export ASDF_CONFIG_FILE=${HOME}/dotfiles/.asdfrc

zstyle ':completion:*:*:make:*' tag-order 'targets'

# Erlang & Elixir
export KERL_CONFIGURE_OPTIONS="--enable-wx \
                               --with-wx-config=/usr/local/Cellar/wxwidgets/3.2.2.1_1/bin/wx-config \
                               --without-jinterface"

export ERL_AFLAGS="-kernel shell_history enabled"
alias iexm='iex -S mix'
alias phx='iex -S mix phx.server'
alias melixir='cd ~/sandbox/elixir'

alias v='nvim'
alias nvim='rm -rf ~/.cache/nvim;nvim'
alias vnvim='v ~/dotfiles/nvim/lua/user/'
alias vastronvim='v  ~/.config/nvim'
alias vzshr='v ~/dotfiles/.zshrc'

alias mkdir='mkdir -p'
alias rmd='rm -rf'
alias getip="curl ifconfig.me"

# https://github.com/ogham/exa
if [ -x "$(command -v exa)" ]; then
    alias ls="exa"
    alias la="exa --long --all --group --group-directories-first"
fi

alias ll='ls -la'
alias lsg="ls -aF | grep";
alias hisg="history | grep -i";
alias mecomcharge='cd ~/ecomcharge'
alias mboapi='cd ~/ecomcharge/boapi'
alias mwls='cd ~/ecomcharge/wls'
alias msql='cd ~/sql'
alias mnotes='cd ~/notes'
alias tmp='cd ~/tmp'
alias msandbox='cd ~/sandbox'
alias mdotfiles='cd ~/dotfiles'
alias t='make test'
alias s='make start'
alias b='make build'
alias r='make run'
alias reload='. ~/.zshrc'

# git shortlog
alias pull='git pull --rebase upstream $(git rev-parse --abbrev-ref HEAD)'
alias push='git push -u origin $(git rev-parse --abbrev-ref HEAD) $@'
alias l='git log -10'
alias gcm='git commit -m' # overriding
alias gai='git add -i'
alias gcob='git checkout -b' # double plugin alias gcb
alias grpo='git remote prune origin'  # delete all branches that are not on the remote server

git() {
    if [ "$1" = "amend" ]; then
        shift
        git log -n 1 --pretty=tformat:%s%n%n%b | git commit -F - --amend "$@"
    elif [ "$1" = "undo" ]; then
        shift
        git reset --soft HEAD^
    elif [ "$1" = "clean" ]; then
        shift
        git branch --merged master | grep -v '^[ *]*master$' | xargs git branch -d
    else
        command git "$@"
    fi
}

# https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git/README.md

alias gdst='git diff --stat'
# gdca='git diff --cached'
# gdcw='git diff --cached --word-diff'
# gds='git diff --staged'
# gdw='git diff --word-diff'
# gdv='git diff -w $@ | view -'
# gdup='git diff @{upstream}'
# gdnolock='git diff $@ ":(exclude)package-lock.json" ":(exclude)*.lock"'
# gdt='git diff-tree --no-commit-id --name-only -r'

# alias gpl='git pull'
# alias gcl='git clone'
# alias gc='git commit -v'
# alias gc!='git commit -v --amend'
# alias gco='git checkout'
# alias gcob='git checkout -b'

# setopt INTERACTIVE_COMMENTS

# set -o vi

alias fixssh='eval $(tmux showenv -s SSH_AUTH_SOCK)'
alias vcube='v ~/tmp/cube.md'

function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
