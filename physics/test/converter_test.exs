defmodule ConverterTest do
  use ExUnit.Case

  test "to to_nearest_tenth" do
    assert Converter.to_nearest_tenth(10.11) == 10.1
    assert Converter.to_nearest_tenth(10.55) == 10.6
  end

  test "to_km" do
    assert Converter.to_km(1000) == 1
  end

  test "to_light_seconds" do
    assert Converter.to_light_seconds({:miles, 0.1e11}, precision: 1) == 53681
  end
end
