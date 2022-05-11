odd? = &(rem(&1, 2) != 0)
IO.inspect Enum.filter(1..3, odd?)

1..100_000 |> Enum.map(&(&1 * 3)) |> Enum.filter(odd?) |> Enum.sum() |> IO.puts
IO.puts Enum.sum(Enum.filter(Enum.map(1..100_000, &(&1 * 3)), odd?))
