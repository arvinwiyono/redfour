defmodule ConverterTwoTest do
  use ExUnit.Case
  doctest Physics

  test "ConverterTwo works" do
    ConverterTwo.to_light_seconds({:miles, 1000}, precision: 5) |> IO.inspect()
    ConverterTwo.to_light_seconds({:meters, 1000}, precision: 5) |> IO.inspect()
    ConverterTwo.to_light_seconds({:feet, 1000}, precision: 5) |> IO.inspect()
    ConverterTwo.to_light_seconds({:inches, 1000}, precision: 5) |> IO.inspect()
  end

  test "ConverterTwo works with default value" do
    ConverterTwo.to_light_seconds({:miles, 1000}) |> IO.inspect()
    ConverterTwo.to_light_seconds({:meters, 1000}) |> IO.inspect()
    ConverterTwo.to_light_seconds({:feet, 1000}) |> IO.inspect()
    ConverterTwo.to_light_seconds({:inches, 1000}) |> IO.inspect()
  end
end
