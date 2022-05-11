IO.puts :apple
IO.puts :orange
IO.puts :watermelon

IO.puts(:apple == :apple)
IO.puts(:apple == :orange)

IO.puts(true == :true)
IO.puts(is_atom(false))
IO.puts(is_boolean(:false))

IO.inspect nil
IO.inspect true
IO.inspect false

IO.puts(is_atom(Hello))
