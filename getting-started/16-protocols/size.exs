# compile size.ex, user.ex and other_user.ex first

import Size
IO.puts size "foo"
IO.puts size {:ok, "hello"}
IO.puts size %{label: "some label"}
# IO.puts size [1, 2, 3] # Protocol.UndefinedError

IO.puts size MapSet.new

IO.puts size %User{}

IO.puts size %OtherUser{}
