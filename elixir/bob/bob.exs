defmodule Bob do
  def hey(input) do
    input = String.trim(input)
    cond do
      input == "" -> "Fine. Be that way!"
      String.last(input) == "?" -> "Sure."
      String.upcase(input) == input && String.downcase(input) != input -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end
end
