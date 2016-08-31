defmodule ExAircallTest do

  use ExUnit.Case
  doctest ExAircall

  @doc """

  """
  test "returns a pong" do
    assert ExAircall.ping == "pong"
  end

  test "returns a list of calls" do
    [map] = ExAircall.call
    assert is_map(map)
  end
end
