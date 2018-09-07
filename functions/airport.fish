function airport --description 'Mac OS X Airport utility'
    if [ $argv[1] ]
        /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport $argv
    else
        /System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport
    end
end