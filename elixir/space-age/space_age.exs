defmodule SpaceAge do
  def age_on(:mercury, seconds) do
    calculate_earth_years(seconds) / 0.2408467
  end

  def age_on(:venus, seconds) do
    calculate_earth_years(seconds) / 0.61519726
  end

  def age_on(:earth, seconds) do
    calculate_earth_years(seconds)
  end

  def age_on(:mars, seconds) do
    calculate_earth_years(seconds) / 1.8808158
  end

  def age_on(:jupiter, seconds) do
    calculate_earth_years(seconds) / 11.862615
  end

  def age_on(:saturn, seconds) do
    calculate_earth_years(seconds) / 29.447498
  end

  def age_on(:uranus, seconds) do
    calculate_earth_years(seconds) / 84.016846
  end

  def age_on(:neptune, seconds) do
    calculate_earth_years(seconds) / 164.79132
  end

  defp calculate_earth_years(seconds) do
    seconds / 31_557_600
  end
end
