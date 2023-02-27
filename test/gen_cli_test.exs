defmodule GenCLITest do
  use ExUnit.Case
  doctest GenCLI

  test "greets the world" do
    assert GenCLI.hello() == :world
  end
end
