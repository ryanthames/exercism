defmodule Acronym do
  def abbreviate(string) do
    string
    |> String.split
    |> Enum.reduce("", fn(s, acc) -> acc <> capitalize_first(s) end)
    |> String.replace(~r/[^A-Z]+/, "")
  end

  defp capitalize_first(s) do
    [first|rest] = String.graphemes(s)
    String.upcase(first) <> List.to_string(rest)
  end
end
