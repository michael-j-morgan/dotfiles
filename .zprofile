# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zprofile.pre.zsh"
eval "$(/opt/homebrew/bin/brew shellenv)"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.0.2.jdk/Contents/Home
export PATH=$PATH:/Users/michael/Library/Python/3.8/bin
export DOTNET_ROOT=/usr/local/share/dotnet/sdk/6.0.201/

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zprofile.post.zsh"
source /opt/homebrew/opt/autoenv/activate.sh
