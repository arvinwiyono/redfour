defmodule RocketryTest do
  use ExUnit.Case

  test "Rounds to the nearest tenth" do
    assert Physics.Rocketry.rounded_to_nearest_tenth(0.11) == 0.2
  end

  test "Converts to km" do
    assert Physics.Rocketry.convert_to_km(10) == 0.01
  end

  test "Calculates escape" do
    planet = %{ mass: 100, radius: 100 }
    assert planet |> Physics.Rocketry.calculate_escape == (2 * 6.67e-11 |> :math.sqrt)
  end
end
