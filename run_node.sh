#!/bin/bash
#erl -sname gpnode -pa /home/astra/Dropbox/projects_2013/play_with_gproc/gproc/ebin -s play_gproc
# This script runs working Erlang node and detached Erlang Observer node which can be coonected 
# to working node.
# To run with observer - ./run_node.sh -observer
# To run without observer - /run_node.sh 


# Working node
erlfunc()
{
	erl -sname gpnode@astra -pa ebin deps/*/ebin  -s play_gproc
	return 0
}

# Observer node
obsfunc()
{
	erl -sname observer@astra -detached  -run observer
	return 0
}


OBS=$1

if [ $OBS == '-observer' ]; then 
	obsfunc
fi

erlfunc
