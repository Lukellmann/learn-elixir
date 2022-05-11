IO.inspect 'hello'
IO.inspect [?h, ?e, ?l, ?l, ?o]

IO.inspect 'hełło'
IO.puts is_list('hełło')

heartbeats_per_minute = [99, 97, 116]
IO.inspect heartbeats_per_minute

IO.inspect to_charlist("hełło")
IO.inspect to_string('hełło')
IO.inspect to_string(:hello)
IO.inspect to_string(1)

# IO.inspect 'this ' <> 'fails' # ArgumentError
IO.inspect 'this ' ++ 'works'

# IO.inspect "he" ++ "llo" # ArgumentError
IO.inspect "he" <> "llo"
