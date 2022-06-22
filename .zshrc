# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && . "$HOME/.fig/shell/zshrc.pre.zsh"
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
# if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#   source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
# fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/michael/.oh-my-zsh
export LC_ALL=en_US.UTF-8
# export PATH="/usr/local/opt/terraform@0.12/bin:$PATH"

#source /Users/<YOUR_PATH>/awesome-terminal-fonts/build/*.sh
#zstyle ':completion:*:*:git:*' script ~/.oh-my-zsh/custom/plugins/git-completion.bash
#fpath=(~/.oh-my-zsh/custom/plugins $fpath)
# source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

plugins=(
    zsh-autosuggestions 
    zsh-syntax-highlighting 
    git
    brew
    macos
    aliases
    battery
    # vi-mode
    ) 
autoload -Uz compinit && compinit

#source ~/.oh-my-zsh/custom/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source ~/.oh-my-zsh/custom/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

#ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="powerlevel10k/powerlevel10k"

#POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL10K_MODE='nerdfont-complete'
ENABLE_CORRECTION="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
# PATH=$PATH:~/Library/Python/2.7/bin
# export PATH="$HOME/Library/Python/3.8/bin:$PATH"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

#wifi 相关
# POWERLEVEL9K_CUSTOM_WIFI_SIGNAL="zsh_wifi_signal"
# POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_BACKGROUND="green"
# POWERLEVEL9K_CUSTOM_WIFI_SIGNAL_FOREGROUND="black"

# zsh_wifi_signal(){
#         local output=$(/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources/airport -I)
#         local airport=$(echo $output | grep 'AirPort' | awk -F': ' '{print $2}')

#         if [ "$airport" = "Off" ]; then
#                 local col font
#         fi
# }

#battery 相关
POWERLEVEL10K_BATTERY_CHARGING_FOREGROUND='red'
POWERLEVEL10K_BATTERY_CHARGED_FOREGROUND='blue'
POWERLEVEL10K_BATTERY_DISCONNECTED='blue'
POWERLEVEL10K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL10K_BATTERY_LOW_COLOR='red'
POWERLEVEL10K_BATTERY_VERBOSE=false
#POWERLEVEL10K_BATTERY_STAGES=($'\u2581 ' $'\u2582 ' $'\u2583 ' $'\u2584 ' $'\u2585 ' $'\u2586 ' $'\u2587 ' $'\u2588 ')
# POWERLEVEL10K_BATTERY_ICON='\uf1e6 '

#logo下面的箭头相关
POWERLEVEL10K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL10K_PROMPT_ON_NEWLINE=true
POWERLEVEL10K_MULTILINE_LAST_PROMPT_PREFIX="%F{014}\u2570%F{cyan}\uF054%F{073}\uF054%F{109}\uF054%f "

POWERLEVEL10K_VCS_MODIFIED_BACKGROUND='yellow'
POWERLEVEL10K_VCS_UNTRACKED_BACKGROUND='yellow'
POWERLEVEL10K_VCS_UNTRACKED_ICON='?'

POWERLEVEL10K_LEFT_PROMPT_ELEMENTS=(
    os_icon 
    dir 
    vcs)
POWERLEVEL10K_RIGHT_PROMPT_ELEMENTS=(
    status 
    time 
    dir_writable 
    battery 
    #kubecontext 
    ram 
    load 
    background_jobs
    )

#POWERLEVEL10K_SHERLEVEL9K_LOAD_WARNING_VISUAL_IDENTIFIER_COLOR="yellow"
POWERLEVEL10K_LOAD_NORMAL_VISUAL_IDENTIFIER_COLOR="green"
# POWERLEVEL10K_HOME_ICON=''
# POWERLEVEL10K_HOME_SUB_ICON=''
# POWERLEVEL10K_FOLDER_ICON=''
POWERLEVEL10K_STATUS_VERBOSE=true
POWERLEVEL10K_STATUS_CROSS=true
POWERLEVEL10K_TIME_ICON=""
POWERLEVEL10K_PUBLIC_IP_BACKGROUND="green"
POWERLEVEL10K_PUBLIC_IP_FOREGROUND="black"
POWERLEVEL10K_KUBECONTEXT_BACKGROUND="white"
POWERLEVEL10K_KUBECONTEXT_FOREGROUND="black"
POWERLEVEL10K_VCS_GIT_ICON='\uF408 '
POWERLEVEL10K_VCS_GIT_GITHUB_ICON='\uF408 '

# Alias
alias cls="clear"
alias down="cd ~/Downloads"
alias ..="cd .."
alias ....="cd ../.."

alias look="find * -type f | fzf > selected"
alias search="grep --color -rnw ./ -e "
alias ports="lsof -PiTCP -sTCP:LISTEN"
alias gc="git -c http.sslVerify=false clone"
alias git="git -c http.sslVerify=false"
alias gch="git checkout"
alias gpr="git pull --rebase"
alias graph="git log --color --graph --pretty=format:\"%h | %ad | %an | %s%d\" --date=short"
alias hist="git log --color --pretty=format:\"%C(yellow)%h%C(reset) %s%C(bold red)%d%C(reset) %C(green)%ad%C(reset) %C(blue)[%an]%C(reset)\" --relative-date --decorate"
alias xclip="xclip -selection c"
alias ms="/opt/metasploit-framework/bin/msfconsole"
alias speedtest="curl -o /dev/null cachefly.cachefly.net/100mb.test"
#myself
# alias gdd="git add ."
# alias gcmm="git commit -m"
# alias gpom="git push origin main"
# export LSCOLORS=""
alias config='/usr/bin/git --git-dir=/Users/michael/.cfg/ --work-tree=/Users/michael'

DISABLE_MAGIC_FUNCTIONS=true

### Fix slowness of pastes with zsh-syntax-highlighting.zsh
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
### Fix slowness of pastes


# Kubernetes aliases
# alias k="kubectl"

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
#autojump plugin
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
neofetch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /Users/michael/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && . "$HOME/.fig/shell/zshrc.post.zsh"
