#/bin/sh

echo "First install vim, emacs, redshift, and zsh. This installs files for i3
but it doesn't need to be installed."

cp .emacs ~
mkdir -p ~/.i3
cp .i3/config ~/.i3
cp .i3status ~
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
echo "Please run \"PluginInstall\" in vim."
