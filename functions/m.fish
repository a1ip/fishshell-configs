function m --description 'Open MacVim'
  if not count $argv >/dev/null
    mvim .; and return 0
  end

  if test -d $argv[1]
    set dir $argv[1]
    set arg .
  else
    set dir (dirname $argv[1])
    set arg (basename $argv[1])
  end

  sh -c "cd '$dir' && mvim '$arg'"
end
