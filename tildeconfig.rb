mod :vim do |m|
  m.pkg_dep "vim", "git"
  m.file_sym ".vimrc"
  m.file_sym "ftplugin", ".vim/after/ftplugin"
  m.install do
    sh "git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim"
  end
end

mod :neovim => [:vim] do |m|
  m.pkg_dep "curl"
  m.file_sym ".nvimrc"
  m.file_sym ".config/nvim/init.vim"
  m.install do
    sh "curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    puts "Please open vim and run 'PlugInstall'"
  end
end

mod :miniterm do |m|
  m.file_sym ".config/miniterm/miniterm.conf"
end

mod :alacritty do |m|
  m.file_sym ".config/alacritty/alacritty.yml"
end

mod :emacs do |m|
  m.file ".emacs"
  m.file ".emacs.d"
end

mod :i3 do |m|
  m.file_sym ".config/i3/config"
  m.directory ".config/i3blocks"
  # TODO: Setup i3 blocks.
  # m.file ".i3status.conf"
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
  m.file ".config/redshift.conf"
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

mod :bash do |m|
  m.file ".profile"
  m.file ".bashrc"
end

mod :x do |m|
  m.file ".Xresources"
  m.file ".xprofile"
end

# Doesn't use symlinks because files are written to by programs such as Plasma
mod :gtk do |m|
  m.file "gtk/.gtkrc-2.0", ".gtkrc-2.0"
  m.file "gtk/settings.ini", ".config/gtk-3.0/settings.ini"
  m.file "gtk/index.theme", ".icons/default/index.theme"
end

mod :rofi do |m|
  m.directory_sym "rofi", ".config/rofi"
end

mod :mpv do |m|
  m.directory_sym ".config/mpv"
end
