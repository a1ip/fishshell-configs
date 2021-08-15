function sup -d 'Converts all numbers in text to superscript unicode characters'
  if test (count $argv) -eq 0
    set -l a
    while read line
      set a $a '\n' $line
    end
    node -e "console.log(require('numbers-to-superscript')('$a'))"
  else
    node -e "console.log(require('numbers-to-superscript')('$argv[1]'))"
  end
end
