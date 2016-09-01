defmodule ExAircallTest do

  use ExUnit.Case
  doctest ExAircall

  test "returns a pong" do
    assert ExAircall.ping == "pong"
  end

  test "returns a list of calls" do
    list = ExAircall.calls
    assert is_list(list)
  end
end
