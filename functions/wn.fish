function wn --description 'погода в Новороссийске'
  if count $argv > /dev/null
    curl ru.wttr.in/44.72,37.76\?$argv
  else
    curl ru.wttr.in/44.72,37.76\?TQ0
  end
end
