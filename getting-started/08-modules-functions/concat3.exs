defmodule Concat3 do
  def join(a, b) do
    IO.puts "***First join"
    a <> b
  end

  # warning: this clause for join/2 cannot match because
  #          a previous clause at line 2 always matches
  def join(a, b, sep \\ " ") do
    IO.puts "***Second join"
    a <> sep <> b
  end
end

IO.puts Concat3.join "Hello", "world"
IO.puts Concat3.join "Hello", "world", "_"
