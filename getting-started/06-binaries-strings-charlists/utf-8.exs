string = "héllo"
IO.puts string
IO.puts String.length(string)
IO.puts byte_size(string)

firefighter = "👩‍🚒"
IO.puts firefighter
IO.puts String.length(firefighter)
IO.puts length(String.codepoints(firefighter))
IO.puts length(String.graphemes(firefighter))
IO.puts byte_size(firefighter)

IO.inspect(firefighter, binaries: :as_binaries)
