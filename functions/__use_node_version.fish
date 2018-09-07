function __use_node_version
  # test if .nvmrc exists
  if test -e .nvmrc
    # test if variable exist and compare version with .nvmrc
    if test \( -n "$NVMRC_CURRENT" \) -a \( $NVMRC_CURRENT = (cat .nvmrc) \) > /dev/null 2>&1
      # node version allready set
    else
      # create a nvm current variable
      set -g NVMRC_CURRENT (cat .nvmrc)
      nvm use $NVMRC_CURRENT > /dev/null
      #echo 'set node version'
    end  
  end
end