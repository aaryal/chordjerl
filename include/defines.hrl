% Includes file for the Chordjerl

-define (DICT, dict).
-define (TRACE(X, M), io:format(user, "TRACE ~p:~p ~p ~p~n" ,[?MODULE, ?LINE, X, M])).
-define (RECONNECT_TIMEOUT, 10000).
-define (NBIT, 160). % number of bits in the hash function

-record(srv_state, {
    fingers = [],
    predecessor,
    backing_store = simple_kv_backing_store,
    sha
  }).

-record(finger, {
    sha,
    node
  }).

