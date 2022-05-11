r1 = if true do 1 else 2 end
IO.puts r1

r2 = if true, do: 1, else: 2
IO.puts r2
