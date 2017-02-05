function co
		tmux new-window -d -c ~/my/coco/bin -n coco-mongo ./coco-mongodb
		tmux new-window -d -c ~/my/coco/bin -n coco-brunch ./coco-brunch
		tmux new-window -d -c ~/my/coco/bin -n coco-server ./coco-dev-server
end
