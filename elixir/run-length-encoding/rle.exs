defmodule RunLengthEncoder do
  def encode(string) do
    cond do
      String.length(string) == 0 ->
        ""
      true ->
        [first | rest] = string |> String.graphemes
        rest |> _encode(first, 1, "")
    end
  end

  def decode(string) do
  end

  defp _encode([current|[]], last, current_count, encoded_string) do
    cond do
      current == last ->
        encoded_string <> "#{current_count+1}#{last}"
      true ->
        encoded_string <> "#{current_count}#{last}1#{current}"
    end
  end

  defp _encode([current|rest], last, current_count, encoded_string) do
    cond do
      current == last -> 
        _encode(rest, current, current_count + 1, encoded_string)
      true ->
        _encode(rest, current, 1, encoded_string <> "#{current_count}#{last}")
    end
  end
end
