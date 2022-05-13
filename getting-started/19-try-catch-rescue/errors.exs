# raise "oops"
# raise ArgumentError, message: "invalid argument foo"

defmodule MyError do
  defexception message: "default message"
end

# raise MyError
# raise MyError, message: "custom message"
# raise MyError, "another custom message"

caught = try do
  raise "oops"
rescue
  e in RuntimeError -> e
end

IO.inspect caught


result = try do
  raise MyError
rescue
  MyError -> "rescued MyError"
end

IO.puts result


File.read("hello") |> IO.inspect
File.write("hello", "world") |> IO.inspect
File.read("hello") |> IO.inspect

res = case File.read("hello") do
  {:ok, content} -> "Success: #{content}"
  {:error, error} -> "Error: #{:file.format_error error}"
end

IO.puts res

# File.read!("unknown") # File.Error
