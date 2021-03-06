-module(calculator_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% API
-export([add/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    calculator_sup:start_link().

stop(_State) ->
    ok.

add([]) ->
  0;
add([Head | Tail]) ->
  Head + add(Tail).
