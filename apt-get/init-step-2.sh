#!/bin/bash

# zsh font and theme
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  cd ~
  
# modifications
cat >> ~/.zshrc << EOL
  # NVM 
  export NVM_DIR="$HOME/.nvm"
  [ -s "$HOME/.nvm/nvm.sh" ] && \. "$HOME/.nvm/nvm.sh" # This loads nvm
  [ -s "$HOME/.nvm/bash_completion" ] && \. "$HOME/.nvm/bash_completion"  # This loads nvm bash_completion
EOL
