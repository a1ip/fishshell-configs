function throw -d 'throw a puck'

  set p '-d'
  set url 'https://lsys-test-app.herokuapp.com/puck/throw'
  set p1 '\'{"player":{"color":"'
  set p2 '","username":"'
  set p3 '"},"dx":"\''
  set p4 '\'","dy":"\''
  set p5 '\'"}\''

  if test $argv[1]
    set color $argv[1]
  else
    set color 'hotpink'
  end

  if test $argv[2]
    set name $argv[2]
  else
    set name 'ro'
  end

  if test $argv[3]
    set x $argv[3]
  else
    set x '100'
  end

  if test $argv[4]
    set y $argv[4]
  else
    set y '100'
  end
  #echo $x
  #echo $y
  #echo curl {$p} {$p1}{$color}{$p2}{$name}{$p3}{$x}{$p4}{$y}{$p5} $url
  #curl {$p} {$p1}{$color}{$p2}{$name}{$p3}{$x}{$p4}{$y}{$p5} {$url}
  #echo curl -d "{'player':\{'color':\'$color\','username':\'$name\'\},'dx':'100','dy':'100'}" https://lsys-test-app.herokuapp.com/puck/throw
  #curl -d "{'player':\{'color':\'$color\','username':\'$name\'\},'dx':'100','dy':'100'}" https://lsys-test-app.herokuapp.com/puck/throw
  echo curl -d \{'player':\{'color':\""$color"\",'username':\""$name"\"\},'dx':'100','dy':'100'\} https://lsys-test-app.herokuapp.com/puck/throw
  curl -d \"\{\'player\':\{\'color\':\"red\",\'username\':\"ro\"\},\'dx\':\'100\',\'dy\':\'100\'\}\" https://lsys-test-app.herokuapp.com/puck/throw
end
