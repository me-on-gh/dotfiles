cloud="/Users/$USER/Library/Mobile Documents/com~apple~CloudDocs/init"
eval $(/opt/homebrew/bin/brew shellenv)
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
alias init="cd '$cloud'"
ln $cloud/remote_public/dotfiles/.zshrc ~/.zshrc
export GPG_TTY=$(tty)
eval "$(frum init)"
ln $cloud/local/ssh/config ~/.ssh/config
find $cloud/local/ssh -type f \( -name "*.pub" -o -name "config" -o -name ".DS_Store" \) -prune -o -type f -exec ssh-add --apple-use-keychain {} +
alias git_init_gh="sh '$cloud'/remote_public/utilities/git_init_gh.sh"