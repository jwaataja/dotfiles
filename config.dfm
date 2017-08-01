vim:
	.vimrc
	c.vim ~/.vim/after/ftplugin
	cpp.vim ~/.vim/after/ftplugin
	python.vim ~/.vim/after/ftplugin
	go.vim ~/.vim/after/ftplugin
	.ycm_extra_conf.py
install:
	dep vim git
	sh
		git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

neovim:
	.nvimrc
	.config/nvim/init.vim
install:
	sh
		curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	msg "Please open vim and run 'PlugInstall'"

miniterm:
	.config/miniterm/miniterm.conf

emacs:
	.emacs
	.emacs.d

i3:
	.i3
	.i3status.conf
install:
	msg "Please reload i3"
uninstall:
	msg "Please reload i3"
update:
	msg "Please reload i3"

redshift:
	.config/redshift.conf

jws:
	.jws

zsh:
	.zshrc
	.zshenv
install:
	sh
		sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

X:
	.Xresources
	.xprofile
