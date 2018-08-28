defmodule Converter do
  def to_nearest_tenth(val) do
    Float.ceil(val , 1)
  end

  def to_km(velocity) do
    velocity / 1000
  end

  def to_meters(velocity) do
    velocity * 1000
  end

  def to_light_seconds({ :miles, miles } = val) do
    (miles * 5.36819e-6) |> round_up
  end

  def to_light_seconds( { :meters, meters } = val ) do
    (meters * 3.335638620368e-9) |> round_up
  end

  def to_light_seconds( { :feet, feet } = val ) do
    (feet * 1.016702651488166404e-9) |> round_up
  end

  def to_light_seconds( { :inches, inches } = val ) do
    (inches * 8.472522095734715723e-11) |> round_up
  end

  defp round_up(val) when is_float(val), do: trunc(val)
end
