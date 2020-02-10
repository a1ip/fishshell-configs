function wttr -d 'weather'
  if test (count $argv) -eq 0
    curl wttr.in/44.72,37.76\?lang=ru\&TQ0
  else
    curl wttr.in/$argv[1]
  end
end
