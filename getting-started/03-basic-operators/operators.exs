IO.puts 1 + 2
IO.puts 3 - 4
IO.puts 5 * 6
IO.puts 7 / 8
IO.puts 9 ** 10
IO.puts div 11, 12
IO.puts rem 13, 14

IO.inspect [1, 2, 3] ++ [4, 5, 6]
IO.inspect [1, 2, 3] -- [2]

IO.puts "foo" <> "bar"

IO.puts true and true
IO.puts false or is_atom(:example)
IO.puts not true
IO.puts false and raise "This error will never be raised"
IO.puts true or raise "This error will never be raised"

IO.puts 1 || true
IO.puts false || 11
IO.inspect nil && 13
IO.puts true && 17
IO.puts !true
IO.puts !1
IO.puts !nil

IO.puts 1 == 1
IO.puts 1 == 1.0
IO.puts 1 === 1
IO.puts 1 === 1.0
IO.puts 1 != 2
IO.puts 1 !== 1.0
IO.puts 1 < 2
IO.puts 2 > 1
IO.puts 1 <= 1
IO.puts 1 >= 1

# number < atom < reference < function < port < pid < tuple < map < list < bitstring
IO.puts 1 < :atom
