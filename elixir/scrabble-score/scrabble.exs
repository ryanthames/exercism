defmodule Scrabble do
  @doc """
  Calculate the scrabble score for the word.
  """
  @spec score(String.t) :: non_neg_integer
  def score(word) do
    word
    |> String.upcase
    |> String.graphemes
    |> Enum.reduce(0, fn(s, acc) -> acc + calculate_letter_score(s) end)
  end

  defp calculate_letter_score(s) do
    cond do
      String.contains?("AEIOULNRST", s) -> 1
      String.contains?("DG", s) -> 2
      String.contains?("BCMP", s) -> 3
      String.contains?("FHVWY", s) -> 4
      "K" === s -> 5
      String.contains?("JX", s) -> 8
      String.contains?("QZ", s) -> 10
      true -> 0
    end
  end
end
