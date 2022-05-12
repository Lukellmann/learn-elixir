# compile my_sigils.ex first

IO.puts sigil_r(<<"foo">>, 'i') == ~r/foo/i

import MySigils

a = ~i(13)
IO.puts a == 13
IO.puts a

b = ~i(42)n
IO.puts b == -42
IO.puts b
