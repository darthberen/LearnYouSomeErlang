-module(useless).

-export([add/2, hello/0, greet_and_add_two/1, right_age/1]).

%% attributes
-author("Matt Price").
-vsn(1.0).

add(A,B) ->
    A + B.

%% Shows greetings.
%% io:format/1 is the standard function used to output text.
hello() ->
    io:format("Hello, world!~n").

greet_and_add_two(X) ->
    hello(),
    add(X,2).

right_age(X) when X >= 16, X =< 104 ->
    true;
right_age(_) ->
    false.
