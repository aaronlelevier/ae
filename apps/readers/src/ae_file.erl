%%%-------------------------------------------------------------------
%%% @author Aaron Lelevier
%%% @doc
%%% @end
%%% Created : 21. Feb 2021 7:44 AM
%%%-------------------------------------------------------------------
-module(ae_file).
-author("Aaron Lelevier").
-vsn(1.0).

%%-export([]).
-compile(export_all).

read_file() ->
 file:read_file(file_path()).

file_path() ->
 TestDataDir = filename:join(os:getenv("HOME"), "Documents/erlang/ae/tests/unit/data"),
 Filename = "get-role-response.xml",
 filename:join(TestDataDir, Filename).
