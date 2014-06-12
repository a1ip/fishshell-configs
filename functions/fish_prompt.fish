# name: wkf
# agnoster's Theme - https://gist.github.com/3712874
# A Powerline-inspired theme for FISH
#
# # README
#
# In order for this theme to render correctly, you will need a
# [Powerline-patched font](https://gist.github.com/1595572).

## Set this options in your config.fish (if you want to :])
# set -g theme_display_user yes
# set -g default_user your_normal_user

set -g current_bg NONE
set segment_separator \uE0B0
set right_segment_separator \uE0B0
# ===========================
# Helper methods
# ===========================

set -g __fish_git_prompt_showdirtystate 'yes'
set -g __fish_git_prompt_char_dirtystate '●'
set -g __fish_git_prompt_char_cleanstate ''

function parse_git_dirty
  set -l submodule_syntax
  set submodule_syntax "--ignore-submodules=dirty"
  set git_dirty (command git status -s $submodule_syntax  2> /dev/null)
  if [ -n "$git_dirty" ]
    if [ $__fish_git_prompt_showdirtystate = "yes" ]
      echo -n "$__fish_git_prompt_char_dirtystate"
    end
  else
    if [ $__fish_git_prompt_showdirtystate = "yes" ]
      echo -n "$__fish_git_prompt_char_cleanstate"
    end
  end
end

# ===========================
# Segments functions
# ===========================

function prompt_segment -d "Function to draw a segment"
  set -l bg
  set -l fg
  if [ -n "$argv[1]" ]
    set bg $argv[1]
  else
    set bg normal
  end
  if [ -n "$argv[2]" ]
    set fg $argv[2]
  else
    set fg normal
  end
  set_color -b $bg
  set_color $fg
  if [ -n "$argv[3]" ]
    echo -n -s $argv[3]
  end
end

function prompt_finish -d "Close open segments"
  set_color -b normal
  echo -n -s
end

# ===========================
# Theme components
# ===========================

function prompt_dir -d "Display the actual directory"
  prompt_segment normal "#404040" (prompt_pwd)
end

function prompt_git -d "Display the actual git branch"
  set -l ref
  if command git rev-parse --is-inside-work-tree >/dev/null 2>&1
    set ref (command git symbolic-ref HEAD 2> /dev/null)
    if [ $status -gt 0 ]
      set -l branch (command git show-ref --head -s --abbrev |head -n1 2> /dev/null)
      set ref "$branch "
    end
    set -l branch (echo $ref | sed  "s-refs/heads/--")
    prompt_segment normal "#404040" ":$branch"
  end
end

function prompt_status -d "Display the actual git state"
  set -l dirty
  if command git rev-parse --is-inside-work-tree >/dev/null 2>&1
    set dirty (parse_git_dirty)
    if [ "$dirty" != "" ]
      prompt_segment normal yellow "● "
    else
      prompt_segment normal green "● "
    end
  else
    prompt_segment normal purple "● "
  end
end

# ===========================
# Apply theme
# ===========================

function fish_prompt
  prompt_status
  prompt_finish
end

function fish_right_prompt
  prompt_dir
  prompt_git
  prompt_finish
end