%%% Development module for stopping and starting all nodes or observer node only 
-module(dev).
-compile(export_all).

stop_all() ->
	net_adm:ping(observer@astra),
	io:format("Going down node observer ~n",[]),
	timer:sleep(500),
	rpc:call(observer@astra, init, stop, []),
	erlang:disconnect_node(observer@astra),
	timer:sleep(1000),
	init:stop().

start_obsrv() ->
	os:cmd('/usr/bin/gnome-terminal -e ./observer.sh').

stop_obsrv() ->
	pong = net_adm:ping(observer@astra),
	io:format("Going down observer ~n",[]),
	timer:sleep(500),
	rpc:call(observer@astra, init, stop, []),
	erlang:disconnect_node(observer@astra).

