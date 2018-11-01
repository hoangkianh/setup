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

install_log "iTerm2"
brew cask install iterm2
mkdir ~/Downloads/iterm2-schemes && cd iterm2-schemes
curl -O https://raw.githubusercontent.com/hoangkianh/setup/master/iterm2-schemes/Flat.terminal
curl -O https://raw.githubusercontent.com/hoangkianh/setup/master/iterm2-schemes/Flatland.terminal
curl -O https://raw.githubusercontent.com/hoangkianh/setup/master/iterm2-schemes/Material.terminal
curl -O https://raw.githubusercontent.com/hoangkianh/setup/master/iterm2-schemes/MaterialDark.terminal

install_log "HyperDock"
brew cask install hyperdock

install_log "mpv"
brew cask install mpv

install_log "Skype"
brew cask install skype

install_log "Slack"
brew cask install slack

install_log "The Unarchiver"
brew cask install the-unarchiver

install_log "VS Code"
brew cask install visual-studio-code
cat << EOF >> ~/.bash_profile
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF
install_log "VS Code Setting Syncs Extension"
source ~/.bash_profile && code --install-extension Shan.code-settings-sync

install_log "QuickLook"
brew cask install qlcolorcode qlimagesize qlmarkdown qlstephen quicklook-json

info_log "Use GitHub Gist: 42d1173f6991241e7a72b8911f7c19a0"

info_log "Now please install Clean My Mac / Paste / Total Finder / Tuxera Disk Manager / Bartender"
