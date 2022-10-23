#/!bin/bash

#source $HOME/.dotfiles/shell/functions/importPackages.sh

echo"symlinks creating..."

ln -s $HOME/.dotfiles/editors/nvim $HOME/.config/nvim
ln -s $HOME/.dotfiles/git/.gitconfig $HOME/.gitconfig
ln -s $HOME/.dotfiles/terminal/alacritty $HOME/.config/alacritty
ln -s $HOME/.dotfiles/wm/qtile $HOME/.config/qtile
ln -s $HOME/.dotfiles/wm/gtk-3.0 $HOME/.config/gtk-3.0
ln -s $HOME/.dotfiles/wm/rofi $HOME/.config/rofi
ln -s $HOME/.dotfiles/shell/.xsession $HOME/.xsession
ln -s $HOME/.dotfiles/shell/.gtkrc-2.0 $HOME/.gtkrc-2.0
ln -s $HOME/.dotfiles/shell/zsh/.zshrc $HOME/.zshrc
ln -s $HOME/.dotfiles/shell/zsh/.p10k.zsh $HOME/.p10k.zsh
ln -s $HOME/.dotfiles/shell/zsh/.fzf.zsh $HOME/.fzf.zsh
ln -s $HOME/.dotfiles/shell/sshConfig $HOME/.ssh
ln -s $HOME/.dotfiles/shell/tmux/.tmux.conf $HOME/.tmux.conf
ln -s $HOME/.dotfiles/shell/tmux/.tmux-themepack $HOME/.tmux-themepack
ln -s $HOME/.dotfiles/shell/bash/.bashrc $HOME/.bashrc
ln -s $HOME/.dotfiles/shell/bash/.fzf.bash $HOME/.fzf.bash

