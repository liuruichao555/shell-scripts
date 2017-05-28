#!/bin/bash
# liuruichao

session_name="lrc"

tmux new-session -d -s $session_name -n home
tmux new-window -t $session_name:1 -n idea
tmux new-window -t $session_name:2 -n idea_se
tmux new-window -t $session_name:3 -n fabric
tmux new-window -t $session_name:4 -n fabric-ca
tmux new-window -t $session_name:5 -n other
tmux new-window -t $session_name:6 -n other

tmux send-keys -t $session_name:idea 'cd /Users/liuruichao/javaSRC/oxchains' C-m
#tmux send-keys -t $session_name:idea 'cd /Users/liuruichao/javaSRC/idea' C-m
tmux send-keys -t $session_name:idea_se 'cd /Users/liuruichao/javaSRC/idea_se' C-m
tmux send-keys -t $session_name:fabric 'cd /Users/liuruichao/develop/opensource/golang/gopath/src/github.com/hyperledger/fabric' C-m
tmux send-keys -t $session_name:fabric-ca 'cd /Users/liuruichao/develop/opensource/golang/gopath/src/github.com/hyperledger/fabric-ca' C-m

tmux select-window -t $session_name:0

tmux attach-session -t $session_name
