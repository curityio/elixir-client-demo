# Elixir Client Demo App

[![Quality](https://img.shields.io/badge/quality-experiment-red)](https://curity.io/resources/code-examples/status/)
[![Availability](https://img.shields.io/badge/availability-source-blue)](https://curity.io/resources/code-examples/status/)

This is a very simple app to that tests the Client Credentials Flow in th Curity Identity Server using this OAuth client library https://github.com/scrogson/oauth2.

## Running the example
1. Set configurations in `config/config.exs` to match your deployment of the Curity Identity Server
2. Run `mix deps.get` to download dependencies
3. Run `mix test` 

The result should be

```
Getting token from Curity using Client Credentials...
{
  "access_token" => "dcde70ab-4a0f-43ef-8d98-d7b36d0ed17a",
  "expires_in" => 300,
  "scope" => "",
  "token_type" => "bearer"
}
```