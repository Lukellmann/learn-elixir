input = case IO.gets("give me some input > ") do
  :eof -> "reached EOF"
  {:error, error} -> inspect error
  input -> input
end

IO.puts(input |> String.trim_trailing())

IO.puts(:stderr, "hello world on stderr")
IO.puts(:stdio, "hello world on stdout")
