IO.inspect(for n <- [1, 2, 3, 4], do: n * n)
IO.inspect(for n <- 1..4, do: n * n)

values = [good: 1, good: 2, bad: 3, good: 4]
IO.inspect(for {:good, n} <- values, do: n * n)

IO.inspect(for n <- 0..5, rem(n, 3) == 0, do: n * n)


dirs = ['../01-introduction', '../02-basic-types']

stats = for dir <- dirs,
  file <- File.ls!(dir),
  path = Path.join(dir, file),
  File.regular?(path) do
    File.stat!(path).size
  end

IO.inspect stats


IO.inspect(for i <- [:a, :b, :c], j <- [1, 2], do: {i, j})
