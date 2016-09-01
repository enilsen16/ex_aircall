defmodule ExAircallTest do

  use ExUnit.Case
  doctest ExAircall

  test "returns a pong" do
    assert ExAircall.ping == "pong"
  end

  test "returns a list of calls" do
    map = ExAircall.calls()
    assert is_map(map)
  end
end
