#!/bin/bash

# trap runs the cleanup function when the script completes
# it stops the bash process that's running the push_to_log function
cleanup() {
  kill $(jobs -p)
}
trap cleanup EXIT

push_to_log() {
  local level="error"
  while true; do
    sleep 1
    echo "{\"level\":\"$level\", \"message\":\"$(date)\"}" >> log
    # flip it from error to log after every iteration
    if [[ $level == "error" ]]; then
      level="log"
    else
      level="error"
    fi
  done
}

# append to log file once a second in the background
push_to_log &

# tail it in realtime and pipe it to our JS file to filter it
tail -f log | ./filter-ldjson.js
