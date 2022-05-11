result1 = if true do
  "This works!"
end

IO.puts result1


result2 = unless true do
  "This will never be seen"
end

IO.inspect result2


result3 = if nil do
  "This won't be seen"
else
  "This will"
end

IO.puts result3


x = 1
IO.puts x

result4 = if true do
  x = x + 1
end

IO.puts result4
IO.puts x


y = 1
IO.puts y

y = if true do
  y + 1
else
  y
end

IO.puts y
