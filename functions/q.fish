function q -d 'http -b cli.fyi/[your_request]'
  	switch (count $argv)
      case 0
        http -b cli.fyi/help #echo "Please use format: > q [your_request]"
      case '*'
        http -b cli.fyi/$argv
    end
end
