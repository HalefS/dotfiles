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

source ~/.secrets

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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
plugins=(git golang brew vundle macos nmap zsh-autosuggestions lighthouse)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
   export EDITOR='nvim'
fi

# Compilation flags
 export ARCHFLAGS="-arch arm64"

# tmux-sessionizer
bindkey -s '^f' "tmux-sessionizer.sh\n"
bindkey -s '^k' "tmux-cht.sh\n"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
export HOMEBREW_NO_AUTO_UPDATE=1
export DYLD_LIBRARY_PATH=/opt/homebrew/lib
export PATH=/opt/homebrew/Cellar/qemu/8.1.0/bin:$PATH
export PATH="/opt/homebrew/sbin:$PATH"
export PATH=~/nvim-macos/bin:$PATH
export PATH="/opt/homebrew/Cellar/ctags/5.8_2/bin/:$PATH"
export PATH="/opt/homebrew/bin/:$PATH"
export PATH="/opt/homebrew/Cellar/node@16/16.18.0/bin:$PATH"
export PATH="/usr/local/mysql/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/Library/PostgreSQL/14/bin/psql:$PATH"
export PATH="$HOME/flyway-8.4.4:$PATH"
export PATH="$HOME/go/bin:$PATH"
export VCPKG_ROOT="$HOME/vcpkg"
export PATH="$HOME/node17/bin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="$HOME/Desktop/nand2tetris/tools/:$PATH"
export PATH="$HOME/bin:$PATH"
export LIBRARY_PATH="/usr/local/lib"
export C_INCLUDE_PATH="/usr/local/include"
export LD_LIBRARY_PATH="/usr/local/lib"
export PATH=$PATH:/opt/homebrew/Cellar/riscv-gnu-toolchain/bin
export SSH_KEY="~/.ssh/id_rsa"
export PATH=$PATH:~/zig
alias m4="/opt/homebrew/Cellar/m4/1.4.19/bin/m4"
alias zl="source ~/.zshrc"
alias ports="sudo lsof -i -P -n | grep LISTEN"
alias usage="top | grep CPU usage"
alias vimconfig="nvim ~/.config/nvim/init.lua"
alias pip="pip3"
alias cls="clear"
alias cobra="cobra-cli"
alias gor="go run "
alias got="go test -v"
alias goi="go install"
alias hd='hexdump'
alias tmuxconfig="nvim ~/.tmux.conf"
alias tma="tmux attach -t "
alias tls="tmux ls"
alias ..="cd .."
alias car="cargo run"
alias ls="lsd"
alias lsa="ls -la"
alias nf="neofetch"
alias tm="typer -m"
alias ip="ifconfig en0 | grep \"inet \""
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias vault="ansible-vault"
alias os="uname -s"
alias vim="nvim"
alias min="minutes -f ~/Desktop/notes.md"
alias python="python3"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
fpath=(~/.zsh.d/ $fpath)

# export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# eval "$(starship init zsh)"
export PATH="/opt/openjdk@17/bin:/Users/halefspencer/bin:/Users/halefspencer/Desktop/nand2tetris/tools/:/Users/halefspencer/.emacs.d/bin:/Users/halefspencer/node17/bin:/Users/halefspencer/go/bin:/Users/halefspencer/flyway-8.4.4:/Library/PostgreSQL/14/bin/psql:/Users/halefspencer/.local/bin:/usr/local/mysql/bin:/opt/homebrew/Cellar/node@16/16.18.0/bin:/opt/homebrew/bin/:/opt/homebrew/Cellar/ctags/5.8_2/bin/:/Users/halefspencer/nvim-macos/bin:/opt/homebrew/sbin:/opt/homebrew/Cellar/qemu/8.1.0/bin:/opt/local/bin:/opt/local/sbin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/Library/Frameworks/Python.framework/Versions/3.10/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/opt/X11/bin:/Library/Apple/usr/bin:/Applications/Wireshark.app/Contents/MacOS:/Applications/VMware Fusion.app/Contents/Public:/usr/local/share/dotnet:~/.dotnet/tools:/usr/local/go/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands:/Applications/Postgres.app/Contents/Versions/latest/bin:/Users/halefspencer/.cargo/bin:/Applications/Ghostty.app/Contents/MacOS:/Applications/Visual Studio Code.app/Contents/Resources/app/bin:/Users/halefspencer/Library/Application Support/JetBrains/Toolbox/scripts:/Users/halefspencer/.orbstack/bin:/opt/homebrew/Cellar/riscv-gnu-toolchain/bin:/Users/halefspencer/zig"
