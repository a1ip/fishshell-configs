function cheat -d "Show cheat sheet"
  if test (count $argv) -eq 0
    curl cht.sh/\?style=perldoc
  else
    curl cht.sh/$argv[1]\?style=perldoc
  end
end
