function digy --description 'dig from Yandex DNS'
    if [ $argv[1] ]
        dig @77.88.8.8 $argv
    else
        echo 'usage: digy DIG_ARGUMENTS_AND_OPTIONS'
    end
end