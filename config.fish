
set -x PATH ~/.rvm/gems/ruby-2.1.2@octopress/bin ~/.rvm/gems/ruby-2.1.2/bin ~/.rvm/gems/ruby-2.1.2@global/bin ~/.rvm/rubies/ruby-2.1.2/bin ~/.rvm/bin /usr/local/bin /usr/local/sbin /usr/X11/bin /usr/bin /bin /usr/sbin /sbin /usr/X11R6/bin

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

### Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"

set -l GITHUB https://raw.github.com/lunks/fish-nuggets/master/functions;
curl -s --create-dirs -o ~/.config/fish/functions/rvm.fish $GITHUB/rvm.fish;
# curl -o ~/.config/fish/functions/cd.fish $GITHUB/cd.fish;
rvm > null;

# rvm use ruby-2.1.1@octopress
rvm use 2.1

test -s $HOME/.nvm-fish/nvm.fish; and source $HOME/.nvm-fish/nvm.fish

# /usr/local/bin/fortune
# fortune bible | cowsay -nf tux
fortune bible
