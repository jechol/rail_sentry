defmodule RailSentryTest do
  use ExUnit.Case
  doctest RailSentry

  test "greets the world" do
    assert RailSentry.hello() == :world
  end
end
