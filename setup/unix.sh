# Alacritty
mkdir -p "$HOME/.config/alacritty" && curl -Lo "$HOME/.config/alacritty/alacritty.yml" "https://raw.githubusercontent.com/tn74/personal/master/dotfiles/alacritty.yml"

# vim 
curl -Lo "$HOME/.vimrc" "https://raw.githubusercontent.com/tn74/personal/master/dotfiles/init.vim"

# nvim
# mkdir -p "$HOME/.config/nvim" && curl -Lo "$HOME/.config/nvim/init.vim" "https://raw.githubusercontent.com/tn74/personal/master/dotfiles/init.vim"

# tmux
curl -Lo "$HOME/.tmux.conf" "https://raw.githubusercontent.com/tn74/personal/master/dotfiles/tmux.conf"

# p10k
curl -Lo "$HOME/.p10k.zsh" "https://raw.githubusercontent.com/tn74/personal/master/dotfiles/p10k.zsh"
