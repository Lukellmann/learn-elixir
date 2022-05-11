IO.puts is_bitstring <<3::4>>
IO.puts is_binary <<3::4>>
IO.puts is_bitstring <<0, 255, 42>>
IO.puts is_binary <<0, 255, 42>>
IO.puts is_binary <<42::16>>

<<0, 1, x>> = <<0, 1, 2>>
IO.puts x

# <<0, 1, x>> = <<0, 1, 2, 3>> # MatchError

<<0, 1, y::binary>> = <<0, 1, 2, 3>>
IO.inspect y

<<head::binary-size(2), rest::binary>> = <<0, 1, 2, 3>>
IO.inspect head
IO.inspect rest

IO.puts is_binary "hello"
IO.puts is_binary <<239, 191, 19>>
IO.puts String.valid? <<239, 191, 19>>

IO.puts "a" <> "ha"
IO.inspect <<0, 1>> <> <<2, 3>>

<<b, anana::binary>> = "banana"
IO.puts b == ?b
IO.puts anana


<<z, tail::binary>> = "über"
IO.puts z == ?ü
IO.inspect tail

<<ue::utf8, ber::binary>> = "über"
IO.puts ue == ?ü
IO.puts ber
