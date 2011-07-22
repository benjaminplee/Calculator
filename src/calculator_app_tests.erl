-module(calculator_app_tests).

-compile([export_all]).

-include_lib("eunit/include/eunit.hrl").

addition_test() ->
  ?assertEqual(4, calculator_app:add([2, 2])).
