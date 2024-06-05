defmodule AppThreeTest do
  use ExUnit.Case
  doctest AppThree

  test "greets the world" do
    assert AppThree.hello() == :world
  end
end
