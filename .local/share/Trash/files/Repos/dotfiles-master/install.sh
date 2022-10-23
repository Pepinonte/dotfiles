#/!bin/bash

echo "installation de yay"
cd /opt/
git clone https://aur.archlinux.org/yay-git.git
sudo chown -R headhtr:headhtr ./yay-git
cd yay-git
makepkg -si

chmod +x $HOME/.dotfiles/shell/functions/importPackages.sh
source $HOME/.dotfiles/shell/functions/importPackages.sh

echo "installation de powerlevel10k"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

echo "installation theme tmux"
git clone https://github.com/jimeh/tmux-themepack.git ~/.tmux-themepack

echo "installation fzf"
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo "installation rofi theme"
git clone https://github.com/davatorium/rofi-themes.git
cd User\ Themes
sudo cp onedark.rasi /usr/share/rofi/themes

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
ln -s $HOME/.dotfiles/shell/bash/.bashrc $HOME/.bashrc
ln -s $HOME/.dotfiles/shell/bash/.fzf.bash $HOME/.fzf.bash
