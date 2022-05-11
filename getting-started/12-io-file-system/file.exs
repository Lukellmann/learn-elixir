{:ok, file} = File.open("hello", [:write])
IO.binwrite(file, "world")
File.close(file)

{:ok, content} = File.read("hello")
IO.puts content

File.read("hello") |> IO.inspect
File.read!("hello") |> IO.inspect
File.read("unknown") |> IO.inspect
# File.read!("unknown") |> IO.inspect # File.Error

case File.read("some-file") do
  {:ok, body} -> IO.inspect body
  {:error, reason} -> IO.puts :file.format_error(reason)
end
