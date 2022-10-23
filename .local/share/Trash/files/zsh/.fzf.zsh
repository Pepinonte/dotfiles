# Setup fzf
# ---------
if [[ ! "$PATH" == */home/headhtr/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/headhtr/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/headhtr/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/headhtr/.fzf/shell/key-bindings.zsh"
