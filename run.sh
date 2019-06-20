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
brew install zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

install_log "oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

install_log "zshrc settings"
curl -o .zshrc https://raw.githubusercontent.com/hoangkianh/setup/master/.zshrc

install_log "Setting zsh as default shell"
command -v zsh | sudo tee -a /etc/shells
chsh -s $(which zsh)

install_log "NodeJS"
brew install node npm

install_log "Transmission"
brew install transmission

install_log "Homebrew Cask"
brew tap caskroom/cask

install_log "1Password"
brew cask install 1password

install_log "Dropbox"
brew cask install dropbox

install_log "Fliqlo"
brew cask install fliqlo

install_log "Brooklyn"
brew cask install brooklyn

install_log "Google Drive"
brew cask install google-backup-and-sync

install_log "Google Chrome"
brew cask install google-chrome

install_log "Go Tieng Viet"
brew cask install gotiengviet

install_log "iTerm2"
brew cask install iterm2
mkdir ~/Downloads/iterm2-schemes && cd ~/Downloads/iterm2-schemes/
curl -O https://raw.githubusercontent.com/hoangkianh/setup/master/iterm2-schemes/Flatland.itermcolors
curl -O https://raw.githubusercontent.com/hoangkianh/setup/master/iterm2-schemes/MaterialDark.itermcolors

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
