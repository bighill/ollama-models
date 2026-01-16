#!/bin/bash

# Open 3 panes side-by-side, each running a different model style

SESSION="ollama-models"

# Kill existing session if it exists
tmux kill-session -t $SESSION 2>/dev/null

# Start new session with first pane
tmux new-session -d -s $SESSION

# Split into second column
tmux split-window -h -t $SESSION

# Split into third column
tmux split-window -h -t $SESSION

# Make columns equal width
tmux select-layout -t $SESSION even-horizontal

# Pane 0: concise model
tmux send-keys -t $SESSION:0.0 'ollama create concise -f model-concise && ollama run concise "paint me a picture with words"' C-m

# Pane 1: friendly model
tmux send-keys -t $SESSION:0.1 'ollama create friendly -f model-friendly && ollama run friendly "paint me a picture with words"' C-m

# Pane 2: formal model
tmux send-keys -t $SESSION:0.2 'ollama create formal -f model-formal && ollama run formal "paint me a picture with words"' C-m

# Attach to the session
tmux attach-session -t $SESSION
