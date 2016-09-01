defmodule ExAircall.API do
  @moduledoc """
    API Endpoint wrapper
  """

  @base_url "api.aircall.io/v1"
  @api_token Application.get_env(:ex_aircall, :api_token)
  @app_id Application.get_env(:ex_aircall, :app_id)

  @doc """
  Handy function to test api status or check for valid credentials
  """
  def ping do
    url = "https://#{@app_id}:#{@api_token}@#{@base_url}/ping"
    HTTPoison.get! url
  end

  @doc """
  Calls endpoint. Returns struct similar to http://developer.aircall.io/#call
  """
  def calls do
    url = "https://#{@app_id}:#{@api_token}@#{@base_url}/calls"
    HTTPoison.get! url
  end
end
