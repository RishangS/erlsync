%%%-------------------------------------------------------------------
%% @doc erlsync public API
%% @end
%%%-------------------------------------------------------------------

-module(erlsync_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    erlsync_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
