# spawn_link(fn -> exit(1) end)

res = try do
  exit "I am exiting"
catch
  :exit, _ -> "not really"
end

IO.puts res
