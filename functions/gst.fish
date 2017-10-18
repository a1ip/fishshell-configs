function gst --description 'git status without untracked files'
  git status -uno $argv
end
