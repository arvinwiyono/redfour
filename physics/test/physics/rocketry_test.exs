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
end
