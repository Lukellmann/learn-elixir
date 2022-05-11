odd? = &(rem(&1, 2) != 0)
1..100_000 |> Stream.map(&(&1 * 3)) |> Stream.filter(odd?) |> Enum.sum() |> IO.puts

Stream.cycle([1, 2, 3]) |> Enum.take(10) |> IO.inspect

Stream.unfold("hełło", &String.next_codepoint/1) |> Enum.take(3) |> IO.inspect

File.stream!("dummy") |> Enum.take(10) |> IO.inspect
