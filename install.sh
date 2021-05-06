aliases() {
    echo "==========================================================="
    echo "                  Import zsh aliases                       "
    echo "-----------------------------------------------------------"
    cd $HOME/dotfiles
    cp ./aliases.zsh > $ZSH_CUSTOM/custom/
}

spaceship-prompt() {
   echo "==========================================================="
   echo "                Install spaceship prompt                   "
   echo "-----------------------------------------------------------"
   git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
   ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
   echo 'export ZSH_THEME="spaceship"' > $ZSH_CUSTOM/custom/prompt.zsh
}

aliases
spaceship-prompt
