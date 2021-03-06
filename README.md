# Elixir Client Demo App

[![Quality](https://img.shields.io/badge/quality-experiment-red)](https://curity.io/resources/code-examples/status/)
[![Availability](https://img.shields.io/badge/availability-source-blue)](https://curity.io/resources/code-examples/status/)

This is a very simple app to that tests the Client Credentials Flow in the Curity Identity Server using the [scrogson / oauth2](https://github.com/scrogson/oauth2) client library.

## Running the example
1. Set configurations in `config/config.exs` to match your deployment of the Curity Identity Server
2. Run `mix deps.get` to download dependencies
3. Run `mix test` 

The output on the console should be similar to:

```
Getting token from Curity using Client Credentials...
{
  "access_token" => "dcde70ab-4a0f-43ef-8d98-d7b36d0ed17a",
  "expires_in" => 300,
  "scope" => "",
  "token_type" => "bearer"
}
```

## License

This sample code is licensed under the [Apache v. 2 license](LICENSE).

## Questions

For questions, contact Curity AB:

> info@curity.io
>
> https://curity.io

Copyright (C) 2020 Curity AB.
