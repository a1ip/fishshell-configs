function trs --description 'Google translate'
    translate \{$argv[1]\} $argv[2..(count $argv)]
end