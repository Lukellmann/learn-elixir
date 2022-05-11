tuple = {:ok, "hello"}

IO.inspect tuple

IO.puts tuple_size tuple

IO.inspect elem(tuple, 1)

IO.puts "put_elem"
put_elem(tuple, 1, "world")

IO.inspect elem(tuple, 1)
