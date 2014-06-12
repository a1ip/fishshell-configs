function ta
       tmux attach
       or tmux new
end
#function tmux_attach
    #tmux has-session -t remote
    #and tmux attach-session -t remote
#end

#function tmux_new_session
    #tmux new-session -s remote
    #and kill %self
#end

#tmux_attach
#or tmux_new_session
#or echo "tmux failed to start; using plain fish shell"
