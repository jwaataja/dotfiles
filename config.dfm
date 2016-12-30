vim:
	.vimrc
	c.vim ~/.vim/after/ftplugin
	cpp.vim ~/.vim/after/ftplugin
	python.vim ~/.vim/after/ftplugin
	.ycm_extra_conf.py
install:
	dep vim git
	sh
		git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

emacs
	.emacs
	.emacs.d

i3
	.i3
	.i3status.conf
install:
	msg "Please reload i3"
uninstall:
	msg "Please reload i3"
update:
	msg "Please reload i3"

redshift:
	.config/redshift.conf ~/.config

jws:
	.jws

zsh:
	.zshrc
install:
	sh
		sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

X:
	.Xresources
