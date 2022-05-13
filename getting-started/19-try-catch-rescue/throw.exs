result = try do
  Enum.each(-50..50, fn x -> if rem(x, 13) == 0, do: throw(x) end)
  "Got nothing"
catch
  x -> "Got #{x}"
end

IO.puts result

-50..50
  |> Enum.find(&(rem(&1, 13) == 0))
  |> IO.puts
