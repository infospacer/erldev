# !/bin/bash
# This file is for starting observer:start() from module dev 
# start_obsrv() ->
#	os:cmd('/usr/bin/gnome-terminal -e ./observer.sh').

erl -sname observer@astra -detached -run observer 
