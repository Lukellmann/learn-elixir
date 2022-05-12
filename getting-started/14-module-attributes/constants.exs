defmodule MyServer do
  @initial_state %{host: "127.0.0.1", port: 3456}
  IO.inspect @initial_state

  @unknown

  @my_data 14
  def first_data, do: @my_data
  @my_data 13
  def second_data, do: @my_data
end

IO.puts MyServer.first_data  #=> 14
IO.puts MyServer.second_data #=> 13


defmodule MyApp.Status do
  @service URI.parse("https://example.com")
  def status(email) do
    SomeHttpClient.get(@service)
  end
end


defmodule Foo do
  Module.register_attribute __MODULE__, :param, accumulate: true

  @param :foo
  @param :bar
  IO.inspect @param #=> [:bar, :foo]
end
