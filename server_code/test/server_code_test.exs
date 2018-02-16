defmodule ServerCodeTest do
  use ExUnit.Case
  doctest ServerCode

  test "greets the world" do
    assert ServerCode.hello() == :world
  end
end
