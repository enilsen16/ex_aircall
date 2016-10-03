defmodule ExAircall.API do
  @moduledoc """
    API Endpoint wrapper
  """

  @base_url "api.aircall.io/v1"

  @doc """
  Handy function to test api status or check for valid credentials
  """
  def ping do
    url = "https://#{app_id()}:#{api_token()}@#{@base_url}/ping"
    HTTPoison.get! url
  end

  @doc """
  Calls endpoint. Returns struct similar to http://developer.aircall.io/#call
  To include options, pass then as one string
  """
  def calls(opts \\ "") do
    url = "https://#{app_id()}:#{api_token()}@#{@base_url}/calls#{opts}"
    HTTPoison.get! url
  end

  defp api_token(), do: Application.get_env(:ex_aircall, :api_token)

  defp app_id(), do: Application.get_env(:ex_aircall, :app_id)
end
