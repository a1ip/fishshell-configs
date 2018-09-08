function up -d 'Upgrade brew and node packages'
  brew update
  brew upgrade
  #brew cleanup
  #brew linkapps
  #brew cask upgrade
  brew cu --yes --all --quiet
  #brew cleanup
  rm -rf (brew --cache)
  #rvm get stable
  omf update
  npm install -g npm@latest
  npm cache clear
  npm up -g > /dev/null
  #meteor update
  #rvm use default
  #gem update -q
end
