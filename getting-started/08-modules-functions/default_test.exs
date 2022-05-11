defmodule DefaultTest do
  def dowork(x \\ "hello"), do: x
end

IO.puts DefaultTest.dowork     #=> hello
IO.puts DefaultTest.dowork 123 #=> 123
IO.puts DefaultTest.dowork     #=> hello
