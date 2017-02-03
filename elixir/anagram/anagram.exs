defmodule Anagram do
  def match(base, candidates) do
    candidates
    |> Enum.filter(&(String.downcase(&1) != String.downcase(base)))
    |> Enum.filter(&anagram?(base, &1))
  end

  defp anagram?(base, candidate) do
    sort(String.downcase(base)) === sort(String.downcase(candidate))
  end

  defp sort(string) do
    string
    |> String.graphemes
    |> Enum.sort
    |> List.to_string
  end
end
