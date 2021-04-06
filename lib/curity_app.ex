defmodule CurityApp do
 
  def authorize do  
    Curity.get_token!
  end
end

defmodule Curity do
  use OAuth2.Strategy
  
  def client do
    OAuth2.Client.new([
      strategy: __MODULE__,
      client_id: Application.fetch_env!(:curity_app, :client_id),
      client_secret: Application.fetch_env!(:curity_app, :client_secret),
      site: Application.fetch_env!(:curity_app, :site),
      token_url: Application.fetch_env!(:curity_app, :token_url)
    ])
  end

  def authorize_url(client, params) do
    OAuth2.Strategy.ClientCredentials.authorize_url(client, params)
  end

  def get_token!() do
    OAuth2.Client.get_token!(client(), scope: Application.fetch_env!(:curity_app, :scope))
  end

  def get_token(client, params, headers) do
    client
    |> put_header("accept", "application/json")
    |> OAuth2.Strategy.ClientCredentials.get_token(params, headers)
  end
end