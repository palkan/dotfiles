DOTFILES="/workspaces/.codespaces/.persistedshare/dotfiles"
ZSH_CUSTOM="$HOME/.oh-my-zsh/custom"

aliases() {
    echo "==========================================================="
    echo "                  Import zsh aliases                       "
    echo "-----------------------------------------------------------"
    cd $DOTFILES
    cp ./aliases.zsh $ZSH_CUSTOM/
}

spaceship-prompt() {
   echo "==========================================================="
   echo "                Install spaceship prompt                   "
   echo "-----------------------------------------------------------"
   git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
   ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
   echo 'export ZSH_THEME="spaceship"' > $ZSH_CUSTOM/prompt.zsh
}

aliases
spaceship-prompt
