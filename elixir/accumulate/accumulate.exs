defmodule Accumulate do
  @doc """
    Given a list and a function, apply the function to each list item and
    replace it with the function's return value.

    Returns a list.

    ## Examples

      iex> Accumulate.accumulate([], fn(x) -> x * 2 end)
      []

      iex> Accumulate.accumulate([1, 2, 3], fn(x) -> x * 2 end)
      [2, 4, 6]

  """

  # Not sure if using Enum.reduce is in the spirit of this challenge, so I'm
  # implementing a tail recursion solution instead
  @spec accumulate(list, (any -> any)) :: list
  def accumulate(list, fun) do
    _accumulate(list, fun, [])
  end

  defp _accumulate([], _fun, result), do: result

  defp _accumulate([current|rest], fun, result) do
    _accumulate(rest, fun, result ++ [fun.(current)])
  end
end
