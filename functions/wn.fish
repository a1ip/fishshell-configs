function wn -d 'погода в Новороссийске'
  if test (count $argv) -eq 0
    curl -s ru.wttr.in/Новороссийск\?format=4
    #curl ru.wttr.in/44.72,37.76\?TQ0
  else
    curl -s ru.wttr.in/Новороссийск\?$argv[1]
  end
end
