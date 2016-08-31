defmodule ExAircallTest do
  use ExUnit.Case
  doctest ExAircall

  test "retreive a pong" do
    assert ExAircall.API.ping == "{\"ping\":\"pong\"}"
  end
end
