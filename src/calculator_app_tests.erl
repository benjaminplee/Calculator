-module(calculator_app_tests).

-compile([export_all]).

-include_lib("eunit/include/eunit.hrl").

addition_empty_list_test() ->
  EmptyList = [],
  ExpectedValue = 0,
  ActualValue = calculator_app:add(EmptyList),
  ?assertEqual(ExpectedValue, ActualValue).

addition_single_element_test() ->
  SingleElementList = [5],
  [ExpectedValue] = SingleElementList,
  ActualValue = calculator_app:add(SingleElementList),
  ?assertEqual(ExpectedValue, ActualValue).

addition_multiple_elements_test() ->
  DataList = [2, 3, 4],
  ExpectedValue = 2 + 3 + 4,
  ActualValue = calculator_app:add(DataList),
  ?assertEqual(ExpectedValue, ActualValue).
