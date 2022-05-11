defmodule Foo do
  defmodule Bar do
  end
end

defmodule Foo.Bar do
end

defmodule Foo do
  alias Foo.Bar
end
