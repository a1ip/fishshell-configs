function wn --description 'погода в Новороссийске'
  if count $argv > /dev/null
    curl wttr.in/44.72,37.76\?lang=ru\&$argv
  else
    curl wttr.in/44.72,37.76\?lang=ru\&TQ0
  end
end
