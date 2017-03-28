# Incomplete...
defmodule RotationalCipher do
  @low_range 97..122
  @cap_range 65..90

  @doc """
  Given a plaintext and amount to shift by, return a rotated string.

  Example:
  iex> RotationalCipher.rotate("Attack at dawn", 13)
  "Nggnpx ng qnja"
  """
  @spec rotate(text :: String.t(), shift :: integer) :: String.t()
  def rotate(text, shift) do
    low_first..low_last = @low_range
    cap_first..cap_last = @cap_range
    text 
    |> String.graphemes 
    |> Enum.map(fn s -> 
      <<bin_s, _>> = s <> <<0>>
      cond do
        bin_s >= low_first && bin_s <= low_last ->
          shift_letter(bin_s, low_first, low_last, shift)
        bin_s >= cap_first && bin_s <= cap_last ->
          shift_letter(bin_s, cap_first, cap_last, shift)
        true ->
          bin_s
      end
    end)
  end

  defp shift_letter(bin_letter, low, high, shift) do
    shifted_bin_letter = bin_letter + shift
    cond do
      # TODO convert back to string?
      shifted_bin_letter > high ->
        low + (shifted_bin_letter - high - 1)
      true ->
        shifted_bin_letter
    end
  end
end

