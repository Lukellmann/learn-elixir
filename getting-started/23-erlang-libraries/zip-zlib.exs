:zip.foldl(fn _, _, _, acc -> acc + 1 end, 0, :binary.bin_to_list("file.zip"))
|> IO.inspect


song = "Is this the real life?
Is this just fantasy?
Caught in a landside,
No escape from reality
Open your eyes,
Look up to the skies and see,
I'm just a poor boy, I need no sympathy,
Because I'm easy come, easy go,
Little high, little low,
Any way the wind blows doesn't really matter to
Me, to me"

compressed = :zlib.compress(song)

IO.puts byte_size(song)
IO.puts byte_size(compressed)

uncompressed = :zlib.uncompress(compressed)

IO.puts "same as before: #{song == uncompressed}"
