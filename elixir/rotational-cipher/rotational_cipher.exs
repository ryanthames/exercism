# Incomplete...
defmodule RotationalCipher do
  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """
  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
    text 
    |> String.to_charlist 
    |> Enum.map(fn(c) -> shift_letter(c, shift) end)
    |> String.Chars.to_string
  end

  defp shift_letter(c, shift) do
    cond do
      c in ?A..?Z -> cycle_char(?A..?Z, c - ?A + shift)
      c in ?a..?z -> cycle_char(?a..?z, c - ?a + shift)
      true -> c
    end
  end

  defp cycle_char(rng, num) do
    rng
    |> Stream.cycle
    |> Enum.at(num)
  end
end

