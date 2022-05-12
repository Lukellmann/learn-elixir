# compile product.ex, user2.ex and car.ex first

IO.inspect %Product{}

IO.inspect %User2{}

# IO.inspect %Car{} # compile-time ArgumentError
IO.inspect %Car{make: "VW"}
