function __node_version
  if type "nvm" > /dev/null 2>&1
    __use_node_version
    set node_version (nvm current)
  else
    set node_version "system"
  end

  echo -n (set_color green) ⬢ ‹$node_version› (set_color normal)
end