IO.puts ~s(string with escape codes \x26 #{"inter" <> "polation"})

IO.puts ~S(string without escape codes \x26 #{"inter" <> "polation"})

IO.puts ~s"""
this is
a heredoc string
"""

IO.puts """
without ~S sigil: \"
"""

IO.puts ~S"""
with ~S sigil: \"
"""
