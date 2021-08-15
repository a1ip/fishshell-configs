function wttr -d 'weather'
  if test (count $argv) -eq 0
    curl wttr.in/Новороссийск,Видова,58\?lang=ru\&TQ0
  else
    curl wttr.in/$argv[1]
  end
end
