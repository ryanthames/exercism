defmodule BracketPush do
  @bracket_matches %{
    "{" => "}",
    "[" => "]",
    "(" => ")"
  }

  def check_brackets(str) do
    b_list = String.graphemes(str)
    len = length(b_list) |> round

    cond do
      len == 0 -> true
      rem(len, 2) != 0 -> false
      true -> process_brackets(Enum.chunk(b_list, round(len/2)))
    end
  end

  defp process_brackets([first_half, second_half]) do
    compare(first_half, Enum.reverse(second_half))
  end

  defp compare([], []), do: true

  defp compare([f1|r1], [f2|r2]) do
    cond do
      @bracket_matches[f1] == f2 -> compare(r1, r2)
      true -> false
    end
  end
end
