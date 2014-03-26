function trs --description 'Google translate'
    if test (count $argv) -gt 1
    	translate \{$argv[1]\} $argv[2..(count $argv)] | gawk '{sub(/^{ /, "")};1' | gawk '{sub(/ }$/, "")};1'
    else
    	translate $argv
    end
end