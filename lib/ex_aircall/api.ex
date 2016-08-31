defmodule ExAircall.API do
  @base_url "api.aircall.io/v1"
  @api_token Application.get_env(:ex_aircall, :api_token)
  @app_id Application.get_env(:ex_aircall, :app_id)


  def ping do
    url = "https://#{@app_id}:#{@api_token}@#{@base_url}/ping"
    HTTPoison.get! url
  end

  def call do
    url = "https://#{@app_id}:#{@api_token}@#{@base_url}/calls"
    HTTPoison.get! url
  end
end
