defmodule KV do
  def start_link do
    Task.start_link(fn -> loop(%{}) end)
  end

  defp loop(map) do
    receive do
      {:get, key, caller} ->
        send caller, Map.get(map, key)
        loop(map)
      {:put, key, value} ->
        loop(Map.put(map, key, value))
    end
  end
end


{:ok, pid} = KV.start_link()

send(pid, {:get, :hello, self()})
receive do
  nil -> IO.puts "map is empty"
end

send(pid, {:put, :hello, :world})
send(pid, {:get, :hello, self()})
receive do
  value ->
    IO.write ":hello is mapped to "
    IO.inspect value
end

Process.register(pid, :kv)
IO.inspect Process.registered

send(:kv, {:get, :hello, self()})
receive do
  value ->
    IO.write ":hello is still mapped to "
    IO.inspect value
end
