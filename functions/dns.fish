function dns --description 'List DNS for NETWORK_SERVICE'
    if [ $argv[1] ]
        networksetup -getdnsservers $argv
    else
        echo 'usage: dns NETWORK_SERVICE'
        echo
        echo 'Here is the list of Network Services on this computer:'
        echo
        networksetup -listnetworkserviceorder
    end
end