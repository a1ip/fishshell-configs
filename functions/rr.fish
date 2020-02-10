function rr -d 're-runs the previous command and captures the output, then executes the given command on that output'
  set PREV_CMD (history | head -1)
  set PREV_OUTPUT (eval $PREV_CMD)
  set CMD $argv[1]
  echo "Running '$CMD $PREV_OUTPUT'"
  eval "$CMD $PREV_OUTPUT"
end