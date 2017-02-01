defmodule SumOfMultiples do
  @doc """
  Adds up all numbers from 1 to a given end number that are multiples of the factors provided.
  """
  @spec to(non_neg_integer, [non_neg_integer]) :: non_neg_integer
  def to(limit, factors) do
    1..limit-1
    |> Enum.reduce(0, fn(x, acc) -> 
      cond do
        multiple?(x, factors) -> acc + x
        true -> acc
      end
    end)
  end

  defp multiple?(x, []), do: false

  defp multiple?(x, [factor | rest]) do
    cond do
      rem(x, factor) === 0 -> true
      true -> multiple?(x, rest)
    end
  end
end
