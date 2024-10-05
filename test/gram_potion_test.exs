defmodule GramPotionTest do
  use ExUnit.Case
  doctest GramPotion

  test "greets the world" do
    assert GramPotion.hello() == :world
  end

  test "failed tests" do
    assert 1 + 1 == 3
  end
end
