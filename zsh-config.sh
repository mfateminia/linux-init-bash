#!/bin/bash

# zsh font and theme
  sudo apt-get install powerline fonts-powerline
  sudo apt-get install zsh-theme-powerlevel9k
  echo "source /usr/share/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc
  sudo apt-get install zsh-syntax-highlighting
  echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

# modifications
cat >> ~/.zshrc << EOL
  #remove excess stuff from zshbash
  POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
  POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
  POWERLEVEL9K_DISABLE_RPROMPT=true
  
  # NVM 
  export NVM_DIR="$HOME/.nvm"
  [ -s "$HOME/.nvm/nvm.sh" ] && \. "$HOME/.nvm/nvm.sh" # This loads nvm
  [ -s "$HOME/.nvm/bash_completion" ] && \. "$HOME/.nvm/bash_completion"  # This loads nvm bash_completion
