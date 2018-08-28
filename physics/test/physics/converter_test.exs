defmodule ConverterTest do
  use ExUnit.Case
  doctest Physics

  test "to to_nearest_tenth" do
    assert Physics.Converter.to_nearest_tenth(10.11) == 10.1
    assert Physics.Converter.to_nearest_tenth(10.55) == 10.6
  end

  test "to_km" do
    assert Physics.Converter.to_km(1000) == 1
  end
end
