function codump
  cd ~
  curl http://23.21.59.137/dump.tar.gz > dump.tar.gz
  tar xzvf dump.tar.gz
  rm dump.tar.gz
  mongorestore --drop ~/dump
  rm -rf ~/dump
end
