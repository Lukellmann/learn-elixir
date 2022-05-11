result1 = cond do
  2 + 2 == 5 -> "This will not be true"
  2 * 2 == 3 -> "Nor this"
  1 + 1 == 2 -> "But this will"
end

IO.puts result1


result2 = cond do
  2 + 2 == 5 -> "This is never true"
  2 * 2 == 3 -> "Nor this"
  true -> "prevent CondClauseError (equivalent to else)"
end

IO.puts result2


result3 = cond do
  hd([1, 2, 3]) -> "1 is considered as true"
end

IO.puts result3
