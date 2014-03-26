function trs --description 'Google translate'
    if test (count $argv) -gt 1
    	translate \{$argv[1]\} $argv[2..(count $argv)] | gawk '{gsub(/^({+\s+)+/, "")};1' | gawk '{gsub(/\s+}+$/, "")};1'
    else
    	translate $argv
    end
end