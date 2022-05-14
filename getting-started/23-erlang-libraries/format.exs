:io.format("Pi is approximately given by:~10.3f~n", [:math.pi])
|> IO.inspect

:io_lib.format("Pi is approximately given by:~10.3f~n", [:math.pi])
|> to_string
|> IO.puts
