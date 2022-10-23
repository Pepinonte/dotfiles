source ~/powerlevel10k/powerlevel10k.zsh-theme

neofetch
# tmux 2> /dev/null

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source $HOME/.dotfiles/shell/functions/alias/git.sh
source $HOME/.dotfiles/shell/functions/alias/editors.sh
source $HOME/.dotfiles/shell/functions/alias/generals.sh

PATH=$PATH":$HOME/.dotfiles/scripts"

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-sudo/sudo.plugin.zsh
