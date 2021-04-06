import Config

config :logger, level: :debug

config :curity_app,
    client_id: "elixir",
    client_secret: "Pa$$w0rd!",
    site: "http://localhost:8443",
    token_url: "http://localhost:8443/oauth/v2/oauth-token",
    scope: ""