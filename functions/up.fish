function up
    command brew update;brew upgrade;brew cleanup;rvm get stable;gem update -q;npm up -g;meteor update
end
