set -gx PATH /usr/local/opt/python/libexec/bin ./.cabal-sandbox/bin ~/Library/Haskell/bin /usr/local/bin /usr/local/sbin /usr/X11/bin /usr/bin /bin /usr/sbin /sbin /usr/X11R6/bin /Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin ~/.bin ~/bin

set -g YX ~/Documents/Яндекс.Диск
set -g FC ~/.config/fish

# set Docker env

set -x DOCKER_HOST tcp://192.168.59.103:2376
set -x DOCKER_CERT_PATH /Users/phil/.boot2docker/certs/boot2docker-vm
set -x DOCKER_TLS_VERIFY 1
#eval (docker-machine restart default)
eval (docker-machine env default)

# editor
set -x EDITOR "nvim"

# grep colors
setenv GREP_OPTIONS "--color=auto"

# to make Ruby faster
# https://gist.github.com/2113359
# set -x RUBY_HEAP_MIN_SLOTS 1000000
set -x RUBY_GC_HEAP_INIT_SLOTS 1000000
set -x RUBY_HEAP_SLOTS_INCREMENT 1000000
set -x RUBY_HEAP_SLOTS_GROWTH_FACTOR 1
set -x RUBY_GC_MALLOC_LIMIT 1000000000
set -x RUBY_HEAP_FREE_MIN 500000

set -g PLANCHRONO https://gist.githubusercontent.com/a1ip/9979931/raw/9a0126e89bf1d7e7cce8f4904476e7e9fc986cd7/plan_chronological.txt;

#powerline-setup

function fish_prompt
	~/powerline-shell.py $status --shell bare ^/dev/null
end

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

set -gx WINEARCH "win32"

#pyenv init -

#set -gx SAGE_ROOT "/opt/homebrew-cask/Caskroom/sage/6.9/Sage-6.9.app/Contents/Resources/sage"
#set -gx SAGE64 "yes"

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
