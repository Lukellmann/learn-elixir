x = 1
# ^x = 2 # MatchError

[^x, 2, 3] = [1, 2, 3]

{y, ^x} = {2, 1}
IO.puts y
# {y, ^x} = {2, 2} # MatchError

{z, z} = {3, 3}
IO.puts z
# {z, z} = {3, 4} # MatchError

[head | _] = [1, 2, 3]
IO.puts head
