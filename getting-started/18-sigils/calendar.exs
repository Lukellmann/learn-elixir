today = ~D[2022-05-12]
IO.puts today.day
IO.puts today

now = ~T[19:28:54.0]
IO.puts now.second
IO.puts now

naive_now = ~N[2022-05-12 19:31:52]
IO.puts naive_now

utc_now = ~U[2022-05-12 19:35:18Z]
%DateTime{minute: minute, time_zone: time_zone} = utc_now
IO.puts minute
IO.puts time_zone
IO.puts utc_now
