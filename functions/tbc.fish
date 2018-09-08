function tbc -d 'Netcat based command line pastebin to termbin.com with copy output to clipboard'
    nc termbin.com 9999 | pbcopy
end
