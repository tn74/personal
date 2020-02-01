# XCODE CLI Tools -- git, clang, gcc, etc
xcode-select --install

# Get Brew and add brew installed things to path
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
export PATH="/usr/local/bin:$PATH"


# Python
brew install pyenv
pyenv install latest
pyenv install 3.8.1
pyenv global 3.8.1 
exec "$SHELL"

# iterm2
brew cask install iterm2

# ZShell
brew install zsh
sudo sh -c "echo $(which zsh) >> /etc/shells" && chsh -s $(which zsh)  # Change shell to Zsh
/bin/zsh # Enter Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" # Install Oh-My-Zsh

# General Editing
brew install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim #Vundle


