defmodule ExAircall.APITest do
  use ExUnit.Case
  doctest ExAircall

  test "retreive a pong" do
    %{body: body} = ExAircall.API.ping
    assert body == "{\"ping\":\"pong\"}"
  end

  test "returns call object" do
    %{status_code: status} = ExAircall.API.calls()
    assert status == 200
  end
end
