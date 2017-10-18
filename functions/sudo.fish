function sudo --description "allows to run last command in history as sudo with !!"
    if test "$argv" = !!
    eval command sudo $history[1]
else
    command sudo $argv
    end
end
