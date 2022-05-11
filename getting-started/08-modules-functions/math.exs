defmodule Math do
  def sum(a, b) do
    do_sum(a, b)
  end

  defp do_sum(a, b) do
    a + b
  end

  def zero?(0) do
    true
  end

  def zero?(x) when is_integer(x) do
    false
  end

  def zero2?(0), do: true
  def zero2?(x) when is_integer(x), do: false
end

IO.puts Math.sum(1, 2)      #=> 3
# IO.puts Math.do_sum(1, 2) #=> UndefinedFunctionError

IO.puts Math.zero?(0)           #=> true
IO.puts Math.zero?(1)           #=> false
# IO.puts Math.zero?([1, 2, 3]) #=> FunctionClauseError
# IO.puts Math.zero?(0.0)       #=> FuncitonClauseError

IO.puts Math.zero2?(0) #=> true
IO.puts Math.zero2?(1) #=> false

fun = &Math.zero?/1
IO.puts is_function(fun) #=> true
IO.puts fun.(0)          #=> true

IO.puts (&is_function/1).(fun) #=> true

add = &+/2
IO.puts add.(1, 2) #=> 3

add_one = &(&1 + 1)
IO.puts add_one.(1) #=> 2

good = &"Good #{&1}"
IO.puts good.("morning") #=> Good morning
