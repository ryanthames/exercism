defmodule Raindrops do
  def convert(number) do
    raindrop = 
      factors(number)
      |> Enum.reduce("", fn(x, acc) -> acc <> evaluate_factor(x) end)

    cond do
      String.length(raindrop) == 0 -> Integer.to_string(number)
      true -> raindrop
    end
  end

  defp evaluate_factor(factor) do
    case factor do
      3 -> "Pling"
      5 -> "Plang"
      7 -> "Plong"
      _ -> ""
    end
  end

  defp factors(number) do
    1..number
    |> Enum.filter(fn(x) -> rem(number,x) == 0 end)
  end
end
