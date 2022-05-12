regex = ~r/foo|bar/ |> IO.inspect
IO.puts "foo" =~ regex
IO.puts "bat" =~ regex

IO.puts "HELLO" =~ ~r/hello/
IO.puts "HELLO" =~ ~r/hello/i

IO.puts ~r/hello/ == ~r<hello>
