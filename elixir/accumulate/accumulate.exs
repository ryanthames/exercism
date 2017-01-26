defmodule Accumulate do
  def accumulate(list, fun) do
    for x <- list, do: fun.(x)
  end
end
