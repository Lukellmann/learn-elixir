IO.inspect String.split("1 2 3", " ")

string = "1  2  3"
IO.inspect String.split(string, " ")
IO.inspect String.split(string, " ", [trim: true])
IO.inspect String.split(string, " ", trim: true)

IO.puts [{:trim, true}] == [trim: true]

list = [a: 1, b: 2]
IO.inspect list
IO.inspect list ++ [c: 3]
IO.inspect [a: 0] ++ list
IO.puts list[:a]
IO.puts list[:b]

new_list = [a: 0] ++ list
IO.inspect new_list
IO.puts new_list[:a]

[a: a] = [a: 1]
IO.puts a
# [a: a] = [a: 1, b: 2] # MatchError
# [b: b, a: a] = [a: 1, b: 2] # MatchError
