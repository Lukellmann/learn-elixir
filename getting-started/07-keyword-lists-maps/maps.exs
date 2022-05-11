map = %{:a => 1, 2 => :b}
IO.inspect map
IO.puts map[:a]
IO.inspect map[2]
IO.inspect map[:c]

%{} = %{:a => 1, 2 => :b} # no MatchError
%{:a => a} = %{:a => 1, 2 => :b}
IO.puts a
# %{:c => c} = %{:a => 1, 2 => :b} # MatchError

n = 1
map2 = %{n => :one}
IO.inspect map2
IO.inspect map2[n]
%{^n => :one} = %{1 => :one, 2 => :two, 3 => :three}

IO.puts Map.get(map, :a)
IO.inspect Map.put(map, :c, 3)
IO.inspect Map.to_list(map)

IO.inspect %{map | 2 => "two"}
# %{map | :c => 3} # KeyError

IO.inspect %{a: 1, b: 2}
IO.puts map.a
# map.c # KeyError
