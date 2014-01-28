-module(case_statements).

-compile(export_all).

-author("Matt Price").
-vsn(1.0).

%% horrible for efficiency but just learning the syntax
insert(X,[]) ->
    [X];
insert(X,Set) ->
    case lists:member(X,Set) of
        true -> Set;
        false -> [X|Set]
    end.

beach(Temperature) ->
    case Temperature of
        {celsius, N} when N >= 20, N =< 45 ->
            'favorable';
        {kelvin, N} when N >= 293, N =< 318 ->
            'scientifically favorable';
        {farenheit, N} when N >= 68, N =< 113 ->
            'favorable in the US';
        _ -> 
            'avoid beach'
    end.

