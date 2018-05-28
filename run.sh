LIGHTBLUE='\033[01;34m'

install_log () {
  echo "
  
  ${LIGHTBLUE}**************** INSTALL: Installing $1 ****************
  
  "
}

info_log () {
  echo "
  ${LIGHTBLUE}**************** INFO $1 ****************
  "
}

install_log "Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

install_log "Git"
brew install git

install_log "zsh & plugins"
brew install zsh zsh-autosuggestions zsh-syntax-highlighting

install_log "zshrc settings"
curl -o .zshrc https://raw.githubusercontent.com/hoangkianh/setup/master/.zshrc

install_log "Setting zsh as default shell"
command -v zsh | sudo tee -a /etc/shells
chsh -s $(which zsh)

install_log "NodeJS"
brew install node npm

install_log "Homebrew Cask"
brew tap caskroom/cask

install_log "BetterZip"
brew cask install betterzip

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

install_log "mpv"
brew cask install mpv

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

install_log "QuickLook"
brew cask install qlcolorcode
brew cask install qlimagesize
brew cask install qlmarkdown
brew cask install qlstephen
brew cask install quicklook-json

info_log "Use GitHub Gist: 424f75a3ebc5bb0c6e94761d0168fa97"

info_log "Now please install Clean My Mac / Paste / Total Finder / Tuxera Disk Manager"