result1 = case {1, 2, 3} do
  {4, 5, 6} ->
    "This clause won't match"
  {1, x, 3} ->
    "This clause will match and bind x to #{x} in this clause"
  _ ->
    "This clause would match any value"
end

IO.puts result1


x = 1
result2 = case 10 do
  ^x -> "Won't match"
  _ -> "Will match"
end

IO.puts result2


result3 = case {1, 2, 3} do
  {1, x, 3} when x > 0 -> "match"
  _ -> "no match"
end

IO.puts result3


result4 = case 1 do
  x when hd(x) -> "ArgumentError does not leak"
  x -> "Got #{x}"
end

IO.puts result4


# CaseClauseError:
# case :ok do
#   :error -> "Won't match"
# end


f = fn
  x, y when x > 0 -> x + y
  x, y -> x * y
end

IO.puts f.(1, 3)
IO.puts f.(-1, 3)
