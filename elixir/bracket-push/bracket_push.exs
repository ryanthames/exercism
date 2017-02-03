defmodule BracketPush do
  @bracket_matches %{
    "{" => "}",
    "[" => "]",
    "(" => ")"
  }

  def check_brackets(str) do
    str
    |> String.graphemes
  end

end
