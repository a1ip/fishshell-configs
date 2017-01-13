function up
  brew update
  brew upgrade
  brew cleanup
  brew cask cleanup
  brew linkapps
  brew cu
  rvm get stable
  npm install -g npm@latest
  npm cache clear
  npm up -g > /dev/null
  meteor update
  #rvm use default
  #gem update -q
end
