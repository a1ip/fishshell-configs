function wttr --description 'weather'
  if count $argv > /dev/null
    curl wttr.in/$argv
  else
    curl wttr.in/novorossiysk\?lang=ru
  end
end
