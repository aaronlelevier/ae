%%%-------------------------------------------------------------------
%% @doc ae public API
%% @end
%%%-------------------------------------------------------------------

-module(ae_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    ae_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
