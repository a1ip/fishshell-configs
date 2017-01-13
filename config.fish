set -gx PATH ./.cabal-sandbox/bin ~/Library/Haskell/bin /usr/local/bin /usr/local/sbin /usr/X11/bin /usr/bin /bin /usr/sbin /sbin /usr/X11R6/bin /Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin ~/.bin ~/bin /Library/Frameworks/Python.framework/Versions/2.7/bin/
# set -gx PATH ./.cabal-sandbox/bin /usr/local/Racket ~/Library/Haskell/bin ~/.cabal/bin /usr/local/bin /usr/local/sbin /usr/X11/bin /usr/bin /bin /usr/sbin /sbin /usr/X11R6/bin /Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin ~/.bin ~/bin ~/Library/Android/sdk /Library/Frameworks/Python.framework/Versions/2.7/bin/ /opt/homebrew-cask/Caskroom/libreoffice/5.0.0/LibreOffice.app/Contents/MacOS/

# /usr/texbin

# set Docker env

set -x DOCKER_HOST tcp://192.168.59.103:2376
set -x DOCKER_CERT_PATH /Users/phil/.boot2docker/certs/boot2docker-vm
set -x DOCKER_TLS_VERIFY 1
eval (docker-machine env default)

# additional PATHs for ubuntu: /usr/local/heroku/bin /usr/local/share/npm/bin

# /usr/local/mysql/bin # wrong path

# editor
set -x EDITOR "mvim"

# global node modules
# set -x NODE_PATH "/usr/local/lib/node_modules"

# grep colors
setenv -x GREP_OPTIONS "--color=auto"

# to make Ruby faster
# https://gist.github.com/2113359
# set -x RUBY_HEAP_MIN_SLOTS 1000000
set -x RUBY_GC_HEAP_INIT_SLOTS 1000000
set -x RUBY_HEAP_SLOTS_INCREMENT 1000000
set -x RUBY_HEAP_SLOTS_GROWTH_FACTOR 1
set -x RUBY_GC_MALLOC_LIMIT 1000000000
set -x RUBY_HEAP_FREE_MIN 500000

set -g PLANCHRONO https://gist.githubusercontent.com/a1ip/9979931/raw/9a0126e89bf1d7e7cce8f4904476e7e9fc986cd7/plan_chronological.txt;

#set fish_function_path $fish_function_path "~/.vim/bundle/powerline/powerline/bindings/fish"
#powerline-setup

function fish_prompt
	~/powerline-shell.py $status --shell bare ^/dev/null
end

### Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"

# set -l GITHUB

source ~/.config/fish/nvm-wrapper/nvm.fish

# Load the default rubies
#
#if test -z $rvm_bin_path
#  exec bash --login -c "exec fish"
#end

# set -g -x PATH ~/.rvm/gems/ruby-2.1.2@global/bin ~/.rvm/gems/ruby-2.1.2/bin ~/.rvm/gems/ruby-2.1.2@octopress/bin ~/.rvm/rubies/ruby-2.1.2/bin ~/.rvm/bin $PATH
# rvm use default > /dev/null
# rvm use ruby-2.1.1@octopress
# rvm use 2.1 > /dev/null
#rvm gemset use octopress > /dev/null
# rvm gemset use global > /dev/null

ulimit -S -n 100000 > /dev/null
# /usr/local/bin/fortune
# fortune bible | cowsay -nf tux
#fortune bible
#ta

set -gx WINEARCH "win32"

set -gx HOMEBREW_CASK_OPTS --caskroom=/opt/homebrew-cask/Caskroom

#pyenv init -

#set -gx SAGE_ROOT "/opt/homebrew-cask/Caskroom/sage/6.9/Sage-6.9.app/Contents/Resources/sage"
#set -gx SAGE64 "yes"
#hostname Air.local
fortune myown

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
