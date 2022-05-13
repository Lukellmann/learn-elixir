require Logger

try do
  raise "oops"
rescue
  e ->
    Logger.error(Exception.format :error, e, __STACKTRACE__)
    reraise e, __STACKTRACE__
end
