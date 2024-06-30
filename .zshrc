# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not in the machine
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"

# Source zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in Powerlevel10k
zinit ice depth"1"
zinit light romkatv/powerlevel10k

# Plugins
zinit light zsh-users/zsh-syntax-highlighting # zsh-syntax-highlighting 
zinit light zsh-users/zsh-completions # zsh-completions 
zinit light zsh-users/zsh-autosuggestions # zsh-autosuggestions
zinit light Aloxaf/fzf-tab # fzf-tab 

# "OMZP::git -> ohmyzsh/plugins/git"
zinit snippet OMZP::git # git plugin provides many aliases and a few useful functions.

# load completions
autoload -U compinit && compinit

# Replay all cached completions
zinit cdreplay -q

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Fzf integration for command history search with Ctrl+R
source <(fzf --zsh)

# keybindings
bindkey -e
bindkey '^[[Z' autosuggest-accept # change arrow right auto suggestion to Shift Tab
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'exa -lah $realpath'

# Aliases
alias c="clear"
alias cls="clear & ls"
alias n='nvim' # Set n to open neovim
alias ls='exa' # Set ls to exa batter ls command
alias lst='exa -T' # Set lst to be like tree command
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
alias zed="open -a /Applications/Zed.app -n" # Set zed to open Zed Text editor
alias z="zathura"

