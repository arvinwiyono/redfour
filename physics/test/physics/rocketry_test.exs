defmodule RocketryTest do
  use ExUnit.Case

  test "earth escape_velocity" do
    assert Physics.Rocketry.escape_velocity(:earth) == 11.2
  end
end
