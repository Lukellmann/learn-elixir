{a, b, c} = {:hello, "world", 42}
IO.puts a
IO.puts b
IO.puts c

# {d, e, f} = {:hello, "world"} # MatchError
# {g, h, i} = [:hello, "world", 42] # MatchError

{:ok, result} = {:ok, 13}
IO.puts result
# {:ok, result} = {:error, :oops} # MatchError

[j, k, l] = [1, 2, 3]
IO.puts j
IO.puts k
IO.puts l

[head | tail] = [1, 2, 3]
IO.puts head
IO.puts length(tail)

list = [1, 2, 3]
IO.puts length([0 | list])
