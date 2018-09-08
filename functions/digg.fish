function digg -d 'dig from Google DNS'
    if [ $argv[1] ]
        dig @8.8.8.8 $argv
    else
        echo 'usage: digg DIG_ARGUMENTS_AND_OPTIONS'
    end
end
