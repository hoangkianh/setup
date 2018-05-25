install_log () {
  echo "******** INSTALL: Installing $1 ********"
}

info_log () {
  echo "******** INFO $1 ********"
}

install_log "Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

install_log "Git"
brew install git

install_log "hoangkianh/setup.git"
git clone https://github.com/hoangkianh/setup.git && sudo cp /setup/.zshrc ~ && rm -r -f setup

install_log "zsh & plugins"
brew install zsh zsh-autosuggestions zsh-syntax-highlighting

install_log "Setting zsh as default shell"
command -v zsh | sudo tee -a /etc/shells
chsh -s $(which zsh)

install_log "Mac CLI"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/guarinogabriel/mac-cli/master/mac-cli/tools/install)"

install_log "NodeJS"
brew install node npm

install_log "Homebrew Cask"
brew tap caskroom/cask

install_log "Docker"
brew cask install docker

install_log "Dropbox"
brew cask install dropbox

install_log "Fliglo"
brew cask install fliqlo

install_log "Google Drive"
brew cask install google-backup-and-sync

install_log "Google Chrome"
brew cask install google-chrome

install_log "Go Tieng Viet"
brew cask install gotiengviet

install_log "Hyper"
brew cask install hyper

install_log "HyperDock"
brew cask install hyperdock

install_log "Skype"
brew cask install skype

install_log "Slack"
brew cask install slack

install_log "VS Code"
brew cask install visual-studio-code
cat << EOF >> ~/.bash_profile
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
install_log "VS Code Setting Syncs Extension"
source ~/.bash_profile && code --install-extension Shan.code-settings-sync

info_log "GitHub Token: d07696d02ce59b1921f44e06362d09f7bd6c6188"
info_log "GitHub Gist: 424f75a3ebc5bb0c6e94761d0168fa97"

info_log "Now please install Clean My Mac / Paste / Total Finder / Tuxera Disk Manager"