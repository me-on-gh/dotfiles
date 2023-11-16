cloud="/Users/$USER/Library/Mobile Documents/com~apple~CloudDocs/init"
eval $(/opt/homebrew/bin/brew shellenv)
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
alias init="cd '$cloud'"
ln $cloud/dotfiles/.zshrc ~/.zshrc
export GPG_TTY=$(tty)
eval "$(frum init)"
export SSH_CONFIG=$cloud/ssh/config
export SSH_PRIVATE_KEY=$cloud/ssh/
find $cloud/ssh/ -type f \( -name "*.pub" -o -name "config" -o -name ".DS_Store" \) -prune -o -type f -exec ssh-add --apple-use-keychain {} +

