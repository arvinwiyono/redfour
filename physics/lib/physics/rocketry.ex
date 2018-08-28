defmodule Physics.Rocketry do
  def escape_velocity(planet) do
    planet
      |> calculate_escape
      |> convert_to_km
      |> rounded_to_nearest_tenth
  end

  def calculate_escape(%{ mass: mass, radius: radius }) do
    newtons_constant = 6.67e-11
    2 * newtons_constant * mass / radius
      |> :math.sqrt
  end

  def convert_to_km(val) do
    val / 1000
  end

  def rounded_to_nearest_tenth(val) do
    val |> Float.ceil(1)
  end
end
