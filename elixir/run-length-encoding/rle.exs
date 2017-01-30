defmodule RunLengthEncoder do
  def encode(string) do
    string
    |> String.graphemes
    |> Stream.chunk_by(fn x -> x end)
    |> Stream.map(&collapse(&1))
    |> Enum.join
  end

  def decode(string) do
    Regex.scan(~r/([0-9]+[A-Z])/, string)
    |> Enum.map(&expand(&1))
    |> List.to_string
  end

  defp collapse(s) do
    "#{Enum.count(s)}#{Enum.at(s, 0)}"
  end

  defp expand([e|_]) do
    [count] = Regex.run(~r/[0-9]+/, e)
    [letter] = Regex.run(~r/[A-Z]/, e)

    1..String.to_integer(count) |> Enum.reduce("", fn(_, acc) -> acc <> letter end)
  end
end
