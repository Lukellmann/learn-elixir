send(self(), {:hello, "world"}) |> IO.inspect

msg = receive do
  {:hello, msg} -> msg
  {:world, _msg} -> "won't match"
end

IO.puts msg


r = receive do
  {:hello, msg} -> msg
after
  1_000 -> "nothing after 1s"
end

IO.puts r


parent = self()

spawn(fn -> send(parent, {:hello, self()}) end)

child_msg = receive do
  {:hello, pid} -> "Got hello from #{inspect pid}"
end

IO.puts child_msg
