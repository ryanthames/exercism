defmodule RunLengthEncoder do
  def encode(string) do
    string
    |> String.graphemes
    |> _encode("", 0, "")
    |> List.to_string
  end

  def decode(string) do
  end

  defp _encode([current|[]], last, current_count, encoded_string) do
  end

  defp _encode([current|rest], last, current_count, encoded_string) do
    cond do
      current == last -> 
        _encode(rest, current, current_count + 1, encoded_string)
      true ->
        _encode(rest, current, 0, encoded_string <> "#{current_count}#{last}")
    end
  end
end
