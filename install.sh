aliases() {
    echo "==========================================================="
    echo "                  Import zsh aliases                       "
    echo "-----------------------------------------------------------"
    cd $HOME/dotfiles
    cp ./aliases.zsh > $ZSH/custom/
}

spaceship-prompt() {
   echo "==========================================================="
   echo "                Install spaceship prompt                   "
   echo "-----------------------------------------------------------"
   git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH/custom/themes/spaceship-prompt" --depth=1
   ln -s "$ZSH/custom/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH/custom/themes/spaceship.zsh-theme"
   echo 'export ZSH_THEME="spaceship"' > $ZSH/custom/prompt.zsh
}

aliases
spaceship-prompt
