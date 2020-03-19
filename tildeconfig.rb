mod :vim do |m|
  m.pkg_dep "vim", "git"
  m.file ".vimrc"
  m.file "ftplugin", ".vim/after/ftplugin"
  m.install do
    sh "git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim"
  end
end

mod :neovim => [:vim] do |m|
  m.pkg_dep "curl"
  m.file ".nvimrc"
  m.file ".config/nvim/init.vim"
  m.install do
    sh "curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    puts "Please open vim and run 'PlugInstall'"
  end
end

mod :miniterm do |m|
  m.file ".config/miniterm/miniterm.config"
end

mod :emacs do |m|
  m.file ".emacs"
  m.file ".emacs.d"
end

mod :i3 do |m|
  m.file ".i3"
  m.file ".i3status.conf"
  m.install do
    puts "Please reload i3"
  end
  m.uninstall do
    puts "Please reload i3"
  end
  m.update do
    msg "Please reload i3"
  end
end

mod :redshift do |m|
  m.file ".config/redshift.config"
end

mod :jws do |m|
  m.file ".jws"
end

mod :zsh do |m|
  m.file ".zshrc"
  m.file ".zshenv"
  m.install do
    sh 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"'
  end
end

mod :x do |m|
  m.file ".Xresources"
  m.file ".xprofile"
end
