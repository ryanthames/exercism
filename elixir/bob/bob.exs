defmodule Bob do
  def hey(input) do
    cond do
      String.upcase(input) == input ->
        case String.last(input) do
          "?" -> "Sure."
          _ -> "Whoa, chill out!"
        end
      true ->
        case String.last(input) do
          "?" -> "Sure."
          "" -> "Fine. Be that way!"
          _ -> "Whatever."
        end
    end
  end
end
