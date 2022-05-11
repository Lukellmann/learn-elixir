IO.puts :apple
IO.puts :orange
IO.puts :watermelon

IO.puts(:apple == :apple)
IO.puts(:apple == :orange)

IO.puts(true == :true)
IO.puts(is_atom(false))
IO.puts(is_boolean(:false))

IO.puts nil
IO.puts true
IO.puts false

IO.puts(is_atom(Hello))
