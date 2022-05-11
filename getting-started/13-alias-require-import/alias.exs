defmodule Stats do
  alias Math.List, as: List
  # in the remaining module definition List expands to Math.List

  alias Math.List # same as `alias Math.List, as: List`
end

defmodule Math do
  def plus(a, b) do
    alias Math.List
    # ...
  end

  def minus(a, b) do
    # ...
  end
end


IO.puts is_atom(String)
IO.puts to_string(String)
IO.puts :"Elixir.String" == String

list = [1, [2], 3]
list |> List.flatten() |> IO.inspect
list |> :"Elixir.List".flatten() |> IO.inspect
list |> :lists.flatten() |> IO.inspect
