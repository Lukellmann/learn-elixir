# compile user.ex first

john = %User{}
IO.inspect john

jane = %User{name: "Jane"}
IO.inspect jane

# %User{oops: :field} # compile-time KeyError

IO.puts john.name
IO.inspect %User{jane | age: 42}
IO.inspect %{jane | age: 43}

%User{name: name} = john
IO.puts name

%User{} = %{} # MatchError
