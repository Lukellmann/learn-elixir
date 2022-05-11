tuple = {:ok, "hello"}

IO.puts inspect tuple

IO.puts tuple_size tuple

IO.puts elem(tuple, 1)

IO.puts "put_elem"
put_elem(tuple, 1, "world")

IO.puts elem(tuple, 1)
