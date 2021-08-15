function cht -d "Show cheat sheet from https://cht.sh site"
  if test (count $argv) -eq 0
    curl cht.sh/\?style=perldoc
  else
    curl cht.sh/$argv[1]\?style=perldoc
  end
end
