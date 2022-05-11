{:ok, pid} = Agent.start_link(fn -> %{} end) |> IO.inspect

Agent.update(pid, fn map -> Map.put(map, :hello, :world) end) |> IO.inspect

Agent.get(pid, fn map -> Map.get(map, :hello) end) |> IO.inspect
