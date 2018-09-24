defmodule RocketryTest do
  use ExUnit.Case

  test "earth escape_velocity" do
    assert Physics.Rocketry.escape_velocity(:earth) == 11.2
  end

  test "mars escape_velocity" do
    assert Physics.Rocketry.escape_velocity(:mars) == 5.0
  end

  test "moon escape_velocity" do
    assert Physics.Rocketry.escape_velocity(:moon) == 2.4
  end

  test "orbital acceleration for earth at 100km" do
    orbital_acceleration = Physics.Rocketry.orbital_acceleration(100)
    assert orbital_acceleration == 9.512678810620692
  end

  test "orbital term for 100km above earth" do
    term = Physics.Rocketry.orbital_term(100)
    assert term > 4 && term < 5
  end
end
