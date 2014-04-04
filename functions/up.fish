function up
    command brew update;brew upgrade;rvm get stable;gem update -q;npm up -g;meteor update
end
