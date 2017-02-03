defmodule Anagram do
  import String, only: [downcase: 1]

  def match(base, candidates) do
    candidates
    |> Enum.filter(&(downcase(&1) != downcase(base)))
    |> Enum.filter(&anagram?(base, &1))
  end

  defp anagram?(base, candidate) do
    sort(downcase(base)) === sort(downcase(candidate))
  end

  defp sort(string) do
    string
    |> String.graphemes
    |> Enum.sort
    |> List.to_string
  end
end
