defmodule ExAircall do
  @moduledoc """
    Returns only the response_body. See ExAircall.API for entire HTTP Object
  """

  alias ExAircall.API

  @doc """
    Returns pong if creditials are valid. Otherwise returns `{:error, "Invalid credentials"}`
  """
  def ping do
    res_body =
      API.ping
      |> Map.get(:body)
      |> Poison.decode!

    case res_body do
      %{"ping" => pong} ->
        pong
      _ ->
        {:error, "Invalid credentials"}
    end
  end

  @doc """
    Returns only the parsed body.
  """
  def calls do
    %{body: body} = API.calls

    body
    |> Poison.decode!
    |> Map.get("calls")
  end
end
