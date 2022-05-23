defmodule HoundExampleTest do
  use ExUnit.Case
  doctest HoundExample

  test "greets the world" do
    assert HoundExample.hello() == :world
  end
end
