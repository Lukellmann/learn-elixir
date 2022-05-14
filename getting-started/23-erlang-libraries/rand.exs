IO.puts :rand.uniform()
:rand.seed(:exs1024, {123, 123534, 345345})
IO.puts :rand.uniform()
IO.puts :rand.uniform(6)
