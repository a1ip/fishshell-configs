function gitst --description 'git status without untracked files'
  git status -u no $argv
end
