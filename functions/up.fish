function up
    command brew update;brew upgrade;brew cleanup;rvm get stable;gem update -q;npm cache clear;npm up -g >/dev/null;meteor update
end
