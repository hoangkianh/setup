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
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/hka/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

install_log "Git"
brew install git

install_log "zsh & plugins"
brew install zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

install_log "oh-my-zsh"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

install_log "zshrc settings"
curl -o .zshrc https://raw.githubusercontent.com/hoangkianh/setup/master/.zshrc

install_log "zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

install_log "zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

install_log "Setting zsh as default shell"
command -v zsh | sudo tee -a /etc/shells
chsh -s $(which zsh)

install_log "1Password"
brew install --cask 1password

install_log "Bartender"
brew install --cask bartender

install_log "Cloudflare WARP"
brew install --cask cloudflare-warp

install_log "Coconut Battery"
brew install --cask coconutbattery

install_log "Discord"
brew install --cask discord

install_log "Dropbox"
brew install --cask dropbox

install_log "Fliqlo"
brew install --cask fliqlo

install_log "Brooklyn"
brew install --cask brooklyn

install_log "GoTiengViet"
brew install --cask gotiengviet

install_log "Google Drive"
brew install --cask google-drive

install_log "Google Chrome"
brew install --cask google-chrome

install_log "HyperDock"
brew install --cask hyperdock

install_log "iTerm2"
brew cask install iterm2
mkdir ~/Downloads/iterm2-schemes && cd ~/Downloads/iterm2-schemes/
curl -O https://raw.githubusercontent.com/hoangkianh/setup/master/iterm2-schemes/Flatland.itermcolors
curl -O https://raw.githubusercontent.com/hoangkianh/setup/master/iterm2-schemes/MaterialDark.itermcolors

install_log "Karabiner"
brew install --cask karabiner-elements

install_log "Macs Fan Control"
brew install --cask macs-fan-control

install_log "MonitorControl"
brew install --cask monitorcontrol

install_log "mpv"
brew install --cask mpv

install_log "NeoVim"
brew install --cask neovim

install_log "NodeJS"
brew install node npm
npm install --global yarn

install_log "Skype"
brew install --cask skype

install_log "Slack"
brew install --cask slack

install_log "The Unarchiver"
brew install --cask the-unarchiver

install_log "VS Code"
brew install --cask visual-studio-code

install_log "Telegram Lite & Desktop"
brew install --cask telegram
brew install --cask telegram-desktop

install_log "Transmission"
brew install --cask transmission

install_log "Show all hidden files"
defaults write com.apple.finder AppleShowAllFiles YES
killall Finder /System/Library/CoreServices/Finder.app

install_log "Disable Gatekeeper"
sudo spctl --master-disable

info_log "FiraCode: https://github.com/tonsky/FiraCode"
info_log "FiraCode Nerd Font: https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FiraCode"

info_log "Now please install Clean My Mac / Lightshot / Paste / Sketch / TotalFinder"
