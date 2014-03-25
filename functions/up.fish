function up
    brew update;brew upgrade;rvm get stable;gem update -q;npm up -gs;meteor update
end