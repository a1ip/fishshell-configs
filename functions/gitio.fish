function gitio --description 'GitHub url shortener'
  switch (count $argv)
    case 0
      echo "Please use format: > gitio url_to_github [code]"
    case 1
      curl https://git.io/ --include -F url=$argv[1]
    case '*'
      curl https://git.io/ --include -F url=$argv[1] -F code=$argv[2]
  end
end
