# Get Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# ZShell
brew install zsh
cp zshrc ~/.zshrc
sudo sh -c "echo $(which zsh) >> /etc/shells" && chsh -s $(which zsh)  # Change shell to Zsh
/bin/zsh # Enter Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # Install Oh-My-Zsh

# Python Development
brew install pyenv
pyenv install 3.8.1
pyenv global 3.8.1 
exec "$SHELL"

# General Editing
brew install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim #Vundle
cp vimrc ~/.vimrc 
vim +VundleInstall


