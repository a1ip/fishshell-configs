function up -d 'Upgrade brew and node packages'
  brew update
  brew upgrade
  #brew cleanup
  #brew linkapps
  #brew cask upgrade
  brew cu --yes --all --cleanup --quiet
  mas upgrade
  brew cleanup
  rm -rf (brew --cache)
  brew bundle dump --force --describe --file=~/Brewfile
  #rvm get stable
  omf update
  npm install -g npm@latest
  npm cache clear
  npm up -g > /dev/null
  #meteor update
  #rvm use default
  #gem update -q
  #echo 'Updating «conda»:'
  #conda update conda
end
