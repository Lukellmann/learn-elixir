~s(this is a string with "double" quotes, not 'single')
  |> IO.inspect
  |> IO.puts

IO.write "\n"

~c(this is a char list containing 'single quotes')
  |> IO.inspect
  |> IO.puts

IO.write "\n"

~w(this is a word list of strings)
  |> IO.inspect
  |> IO.puts

IO.write "\n"

~w(this is a word list of char lists)c
  |> IO.inspect
  |> IO.puts

IO.write "\n"

~w(this is another word list of strings)s
  |> IO.inspect
  |> IO.puts

IO.write "\n"

~w(this is a word list of atoms)a
  |> IO.inspect

