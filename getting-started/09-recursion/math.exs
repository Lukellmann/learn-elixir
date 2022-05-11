defmodule Math do
  def sum_list([head | tail], acc) do
    sum_list(tail, head + acc)
  end

  def sum_list([], acc), do: acc

  def double_each([h | t]) do
    [h * 2 | double_each(t)]
  end

  def double_each([]), do: []
end

IO.puts Math.sum_list([1, 2, 3], 0) #=> 6

IO.inspect Math.double_each([1, 2, 3]) #=> [2, 4, 6]

IO.puts Enum.reduce([1, 2, 3], 0, &+/2)
IO.inspect Enum.map([1, 2, 3], &(&1 * 2))
