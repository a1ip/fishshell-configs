set -gx PATH /usr/local/opt/python/bin ./.cabal-sandbox/bin ~/Library/Haskell/bin /usr/local/bin /usr/local/sbin /usr/X11/bin /usr/bin /bin /usr/sbin /sbin /Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin ~/.bin ~/bin /usr/local/anaconda3/bin /usr/local/opt/grep/bin

set -gx MANPATH /usr/share/man /usr/local/man /usr/local/Homebrew/manpages /usr/local/opt/grep/share/man /usr/local/opt/erlang/lib/erlang/man $MANPATH

set -g YX ~/Documents/Яндекс.Диск
set -g FC ~/.config/fish
set -g DL ~/Downloads
set -gx RU /usr/local/share/games/fortunes/ru

set -gx BAT_THEME "Monokai Extended Light"

setenv LANG "ru_RU.UTF-8"
setenv LC_ALL "ru_RU.UTF-8"
setenv LC_TYPE "ru_RU.UTF-8"
# set Docker env

#set -x DOCKER_HOST tcp://192.168.59.103:2376
#set -x DOCKER_CERT_PATH /Users/phil/.boot2docker/certs/boot2docker-vm
#set -x DOCKER_TLS_VERIFY 1
#eval (docker-machine env default)

#docker-machine restart default

# editor
set -x EDITOR "nvim"
set -x MICRO_TRUECOLOR 1
# grep colors
# setenv GREP_OPTIONS "--color=auto"
#alias grep="grep --color=auto"

# to make Ruby faster
# https://gist.github.com/2113359
# set -x RUBY_HEAP_MIN_SLOTS 1000000
set -x RUBY_GC_HEAP_INIT_SLOTS 1000000
set -x RUBY_HEAP_SLOTS_INCREMENT 1000000
set -x RUBY_HEAP_SLOTS_GROWTH_FACTOR 1
set -x RUBY_GC_MALLOC_LIMIT 1000000000
set -x RUBY_HEAP_FREE_MIN 500000

set -g PLANCHRONO https://gist.githubusercontent.com/a1ip/9979931/raw/9a0126e89bf1d7e7cce8f4904476e7e9fc986cd7/plan_chronological.txt;
#set -gx PLANCHRONO https://git.io/plan-chron

#powerline-setup

#function fish_prompt
#	~/powerline-shell.py $status --shell bare ^/dev/null
#end

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

set -gx GOROOT (go env GOROOT)
set -gx GOPATH ~/go
set -gx PATH $PATH $GOPATH/bin

source /usr/local/etc/grc.fish > /dev/null 
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
