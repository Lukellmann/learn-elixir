x = 2

result = try do
  1 / x
rescue
  ArithmeticError ->
    :infinity
else
  y when y < 1 and y > -1 ->
    :small
  _ ->
    :large
end

IO.inspect result
