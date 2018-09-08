function mkcd -d 'Make a new folder and cd into it'
    if [ $argv[1] ]
        mkdir -p $argv[1];cd $argv[1]
    else
        echo 'usage: mkcd NAME_OF_THE_FOLDER'
    end
end
