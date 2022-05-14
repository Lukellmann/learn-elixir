# :queue.in has wrong order for pipe
q_in = &:queue.in(&2, &1)

q = :queue.new
  |> IO.inspect
  |> q_in.("A")
  |> IO.inspect
  |> q_in.("B")
  |> IO.inspect

{value, q} = :queue.out(q)
IO.inspect value

{value, q} = :queue.out(q)
IO.inspect value

{value, _q} = :queue.out(q)
IO.inspect value
