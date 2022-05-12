IO.inspect(for <<c <- " hello world ">>, c != ?\s, into: "", do: <<c>>)

map = %{"a" => 1, "b" => 2}
IO.inspect(for {k, v} <- map, into: %{}, do: {k, v * v})

stream = IO.stream(:stdio, :line)
for line <- stream, into: stream, do: String.upcase(line)
