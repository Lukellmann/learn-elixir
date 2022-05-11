spawn(fn -> raise "oops" end)

Process.sleep(1000)

IO.puts "unlinked process failed without affecting self\n"

IO.write "self: "
IO.inspect self()
IO.puts "spawning linked process that will fail\n"

spawn_link(fn -> raise "oops" end)

Process.sleep(1000)

IO.puts "we will not get here"
