IO.write "other: "
spawn(fn -> 1 + 2 end) |> IO.inspect

alive = &"#{inspect(&1)} is alive: #{Process.alive?(&1)}"

IO.write "other: "
pid = spawn(fn -> 1 + 2 end) |> IO.inspect
IO.puts alive.(pid)

IO.write "self: "
IO.inspect self()
IO.puts alive.(self())
