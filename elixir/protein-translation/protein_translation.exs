defmodule ProteinTranslation do
  @doc """
  Given an RNA string, return a list of proteins specified by codons, in order.
  """
  @spec of_rna(String.t()) :: { atom,  list(String.t()) }
  def of_rna(rna) do
  end

  @doc """
  Given a codon, return the corresponding protein

  UGU -> Cysteine
  UGC -> Cysteine
  UUA -> Leucine
  UUG -> Leucine
  AUG -> Methionine
  UUU -> Phenylalanine
  UUC -> Phenylalanine
  UCU -> Serine
  UCC -> Serine
  UCA -> Serine
  UCG -> Serine
  UGG -> Tryptophan
  UAU -> Tyrosine
  UAC -> Tyrosine
  UAA -> STOP
  UAG -> STOP
  UGA -> STOP
  """
  @spec of_codon(String.t()) :: { atom, String.t() }
  def of_codon(codon) do
    codon
    |> String.graphemes
    |> Enum.chunk(3)
    |> Enum.map(&List.to_string(&1))
    |> process_codon_list
  end

  defp process_codon_list(codons) when length(codons) == 1 do
  {:ok, convert_codon(List.first(codons))}
  end

  defp process_codon_list(codons) do
    result = codons |> Enum.map(&convert_codon(&1))
    {:ok, result}
  end

  defp convert_codon(codon) do
    "Methionine"
  end
end

