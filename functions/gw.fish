function gw -d 'graphic weather'
  if test (count $argv) -eq 0
    curl wttr.in/Новороссийск,Видова,58\?lang=ru\&format=v2\&F
  else
    curl v2.wttr.in/$argv[1]
  end
end
