%%%-------------------------------------------------------------------
%%% @author Aaron Lelevier
%%% @doc
%%% Credit: https://medium.com/erlang-battleground/the-hidden-xml-simplifier-a5f66e10c928
%%% @end
%%% Created : 21. Feb 2021 8:04 AM
%%%-------------------------------------------------------------------
-module(ae_xml).
-author("Aaron Lelevier").
-vsn(1.0).
%%-export([]).
-compile(export_all).

read(Path) ->
  {Element, _} = xmerl_scan:file(Path, [{space, normalize}]),
  [Clean] = xmerl_lib:remove_whitespace([Element]),
  xmerl_lib:simplify_element(Clean).