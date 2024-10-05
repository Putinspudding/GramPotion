defmodule GramPotionTest do
  use ExUnit.Case
  doctest GramPotion

  test "greets the world" do
    assert GramPotion.hello() == :world
  end
end
