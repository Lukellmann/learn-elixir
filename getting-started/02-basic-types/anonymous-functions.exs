add = fn a, b -> a + b end
IO.puts(add.(1, 2))

IO.puts is_function(add, 2)
IO.puts is_function(add, 1)

double = fn a -> add.(a, a) end
IO.puts double.(2)

x = 42
IO.puts x

IO.puts "define and invoke anonymous function"
(fn -> x = 0 end).()

IO.puts x
