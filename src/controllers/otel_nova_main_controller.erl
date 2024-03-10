-module(otel_nova_main_controller).
-export([
         index/1
        ]).

        -include_lib("opentelemetry_api/include/otel_tracer.hrl").

index(_Req) ->
    ?update_name(<<"GET /">>),
    ?with_span(get_index, #{}, fun(_) -> {ok, [{message, "Hello world!"}]} end).
