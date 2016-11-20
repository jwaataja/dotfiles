#/bin/bash

echo "First install vim, emacs, redshift, and zsh. This installs files for i3
but it doesn't need to be installed."

cp .emacs ~
mkdir -p ~/.i3
cp .i3/config ~/.i3
cp .i3status.conf ~
echo "Please reload i3."
mkdir -p ~/.config
cp .config/redshift.conf ~/.config
cp .jws ~

cp .Xresources ~
xrdb ~/.Xresources

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp .zshrc ~

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~
mkdir -p ~/.vim/after/ftplugin
cp c.vim ~/.vim/after/ftplugin
cp cpp.vim ~/.vim/after/ftplugin
cp python.vim ~/.vim/after/ftplugin
cp .ycm_extra_conf.py ~
echo "Please run \"PluginInstall\" in vim."
