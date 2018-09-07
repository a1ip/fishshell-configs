function mdr --description 'Render Markdown'
  if count $argv > /dev/null
    pandoc $argv[1] | lynx -stdin -dump -assume_charset=utf-8
  else
    echo Function must have one argument
  end
end
