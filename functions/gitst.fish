function gitst --description 'git status without untracked files'
  git status -uno $argv
end
