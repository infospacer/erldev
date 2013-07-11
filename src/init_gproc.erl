%% Play with gproc applications launcher.
-module(init_gproc).

%% API export.
-export([start/0]).

%% API functions.

start() ->
	application:start(play_gproc),
	start_gproc().

start_gproc() ->
	ok = application:start(gproc).