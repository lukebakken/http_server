-module(http_server_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
    Dispatch = cowboy_router:compile([{'_', [{"/", cowboy_static, {dir, "/home/lbakken/ct_logs"}}]}]),
    {ok, _} = cowboy:start_clear(my_http_listener, [{port, 8000}], #{env => #{dispatch => Dispatch}}),
    http_server_sup:start_link().

stop(_State) ->
	ok.
