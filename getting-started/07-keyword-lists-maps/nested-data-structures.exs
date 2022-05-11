users = [
  john: %{name: "John", age: 27, languages: ["Erlang", "Ruby", "Elixir"]},
  mary: %{name: "Mary", age: 29, languages: ["Elixir", "F#", "Clojure"]},
]

IO.inspect users
IO.puts users[:john].age


users1 = put_in users[:john].age, 31
IO.inspect users1

users2 = update_in users[:mary].languages, fn ls -> List.delete(ls, "Clojure") end
IO.inspect users2
