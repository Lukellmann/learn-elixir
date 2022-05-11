list = [1, 2, 3]
IO.inspect Enum.map(list, fn x -> x * 2 end)

map = %{1 => 2, 3 => 4}
IO.inspect Enum.map(map, fn {k, v} -> k * v end)

range = 1..3
IO.inspect Enum.map(range, fn x -> x * 2 end)
IO.puts Enum.reduce(range, 0, &+/2)
