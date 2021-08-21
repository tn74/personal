# Alacritty
mkdir -p "$HOME/.config/alacritty" && curl -L "https://raw.githubusercontent.com/tn74/personal/master/dotfiles/alacritty.yml" > "$HOME/.config/alacritty/alacritty.yml" 

# vim 
curl -L "https://raw.githubusercontent.com/tn74/personal/master/dotfiles/init.vim" > "$HOME/.vimrc"

# nvim
mkdir -p "$HOME/.config/nvim" && curl -Lo "$HOME/.config/nvim/init.vim" "https://raw.githubusercontent.com/tn74/personal/master/dotfiles/init.vim"

# tmux
curl -L  "https://raw.githubusercontent.com/tn74/personal/master/dotfiles/tmux.conf" > "$HOME/.tmux.conf"

# p10k
curl -L "https://raw.githubusercontent.com/tn74/personal/master/dotfiles/p10k.zsh" > "$HOME/.p10k.zsh" 
echo '[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh' >> ~/.zshrc
